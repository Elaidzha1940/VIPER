//  /*
//
//  Project: VIPER
//  File: OnboardingPresenter.swift
//  Created by: Elaidzha Shchukin
//  Date: 13.03.2024
//
//  */

import Foundation

protocol OnboardingPresenterProtocol: AnyObject {
    func viewDidLoaded()
    func didLoad(date: String?)
    func didLoad(weather: Int?)
}

class OnboardingPresenter {
    weak var view: OnboardingViewProtocol?
    var router: OnboardingRouterProtocol
    var interactor: OnboardingInteractorProtocol
    
    init(interactor: OnboardingInteractorProtocol, router: OnboardingRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}

extension OnboardingPresenter: OnboardingPresenterProtocol {
    func viewDidLoaded () {
        interactor.loadDate()
        interactor.loadWeather()
    }
    
    func didLoad(date: String?) {
        view?.showDate(date: date ?? "Sorry, no date!")
    }
    
    func didLoad(weather: Int?) {
        let temperature = weather?.description ?? "Sorry, no temperature "
        view?.showWeather(weather: temperature)
    }
}
