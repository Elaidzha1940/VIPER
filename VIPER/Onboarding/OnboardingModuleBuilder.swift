//  /*
//
//  Project: VIPER
//  File: OnboardingModuleBuilder.swift
//  Created by: Elaidzha Shchukin
//  Date: 13.03.2024
//
//  */

import UIKit

class OnboardingModuleBuilder {
    static func build() -> OnboardingViewController {
        let interactor = OnboardingInteractor()
        let router = OnboardingRouter()
        let presenter = OnboardingPresenter(interactor: interactor, router: router)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "Main") as! OnboardingViewController
        viewController.presenter = presenter
        presenter.view = viewController
        interactor.presenter = presenter
        router.viewController = viewController
        return viewController
    }
}

