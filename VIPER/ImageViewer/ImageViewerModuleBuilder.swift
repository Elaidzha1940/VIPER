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
    static func build(temperature: Int) -> ImageViewerViewController {
        let interactor = ImageViewerInteractor(temperature: temperature)
        let router = ImageViewerRouter()
        let presenter = ImageViewerPresenter(interactor: interactor, router: router)
        let storyboard = UIStoryboard(name: "ImageViewer", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ImageViewer") as! ImageViewerViewController
        viewController.presenter = presenter
        presenter.view = viewController
        interactor.presenter = presenter
        router.viewController = viewController
        return viewController
    }
}
