//  /*
//
//  Project: VIPER
//  File: ImageViewerPresenter.swift
//  Created by: Elaidzha Shchukin
//  Date: 13.03.2024
//
//  */

import Foundation

class ImageViewerPresenter {
    weak var view: OnboardingViewProtocol?
    var router: OnboardingRouterProtocol
    var interactor: OnboardingInteractorProtocol
    
    init(interactor: OnboardingInteractorProtocol, router: OnboardingRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}
