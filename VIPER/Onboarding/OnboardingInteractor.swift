//  /*
//
//  Project: VIPER
//  File: OnboardingInteractor.swift
//  Created by: Elaidzha Shchukin
//  Date: 13.03.2024
//
//  */

import Foundation

protocol OnboardingInteractorProtocol: AnyObject {
    func loadDate()
    func loadWeather()
    var temperature: Int { get }
}

class OnboardingInteractor: OnboardingInteractorProtocol {
    weak var presenter: OnboardingPresenterProtocol?
    let dateService = DateService()
    let weatherService = WeatherService()
    
    var temperature: Int = 0
    
    func loadDate() {
        dateService.getDate { [weak self] date in
            self?.presenter?.didLoad(date: date.description)
        }
    }
    
    func loadWeather() {
        weatherService.getWeather { [weak self] weather in
            self?.presenter?.didLoad(weather: weather)
            self?.temperature = weather
        }
    }
}

