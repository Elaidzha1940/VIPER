//  /*
//
//  Project: VIPER
//  File: OnboardingRouter.swift
//  Created by: Elaidzha Shchukin
//  Date: 13.03.2024
//
//  */

import Foundation

protocol OnboardingRouterProtocol: AnyObject {
    func openImage(for temperature: Int)
}

class OnboardingRouter: OnboardingRouterProtocol {
    weak var viewController: OnboardingViewController?
    
    func openImage(for temperature: Int) {
        let vc = ImageViewerModuleBuilder.build(temperature: temperature)
        viewController?.present(vc, animated: true, completion: nil)
    }
}
