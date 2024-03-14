//  /*
//
//  Project: VIPER
//  File: ImageViewerInteractor.swift
//  Created by: Elaidzha Shchukin
//  Date: 13.03.2024
//
//  */

import UIKit

protocol ImageViewerInteractorProtocol: AnyObject {
    func getImageForCurrentTemperature() -> UIImage?
}

class ImageViewerInteractor: ImageViewerInteractorProtocol {
    weak var presenter: ImageViewerPresenterProtocol?
    
    let temperature: Int
    
    init(temperature: Int) {
        self.temperature = temperature
    }
    
    func getImageForCurrentTemperature() -> UIImage? {
        if temperature < 0 {
            return UIImage(systemName: "snowflake.circle.fill")
        } else if temperature >= 0, temperature < 10 {
            return UIImage(systemName: "cloud.fill")
        } else {
            return UIImage(systemName: "cloud.sun.fill")
        }
    }
}
