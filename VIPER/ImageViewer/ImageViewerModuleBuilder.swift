//  /*
//
//  Project: VIPER
//  File: ImageViewerModuleBuilder.swift
//  Created by: Elaidzha Shchukin
//  Date: 13.03.2024
//
//  */

import UIKit

class ImageViewerModuleBuilder {
    static func build() -> ImageViewerViewController {
        let interactor = ImageViewerInteractor()
        let router = ImageViewerRouter()
        let presenter = ImageViewerPresenter(interactor: interactor, router: router)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "Main") as! ImageViewerViewController
        viewController.presenter = presenter
        presenter.view = viewController
        interactor.presenter = presenter
        router.presenter = viewController
        return viewController
    }
}
