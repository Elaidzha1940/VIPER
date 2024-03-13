//  /*
//
//  Project: VIPER
//  File: ImageViewerInteractor.swift
//  Created by: Elaidzha Shchukin
//  Date: 13.03.2024
//
//  */

import Foundation

class ImageViewerInteractor: OnboardingInteractorProtocol {
    weak var presenter: OnboardingPresenterProtocol?
    let dateService = DateService()
    let weatherService = WeatherService()
    
    func loadDate() {
        dateService.getDate { [weak self] date in
            self?.presenter?.didLoad(date: date.description)
        }
    }
    
    func loadWeather() {
        weatherService.getWeather { [weak self] weather in
            self?.presenter?.didLoad(weather: weather)
        }
    }
}
