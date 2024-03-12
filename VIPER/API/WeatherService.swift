//  /*
//
//  Project: VIPER
//  File: WeatherService.swift
//  Created by: Elaidzha Shchukin
//  Date: 13.03.2024
//
//  */

import UIKit

class WeatherService {
    func getWeather(completion: @escaping(Int) -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            let temperature = Int.random(in: -30...30)
            completion(temperature)
        }
    }
}

