//  /*
//
//  Project: VIPER
//  File: ImageViewerPresenter.swift
//  Created by: Elaidzha Shchukin
//  Date: 13.03.2024
//
//  */

import UIKit

protocol ImageViewerPresenterProtocol: AnyObject {
    func viewDidLoaded()
}

class ImageViewerPresenter {
    weak var view: ImageViewerViewProtocol?
    var router: ImageViewerRouterProtocol
    var interactor: ImageViewerInteractorProtocol
    
    init(interactor: ImageViewerInteractorProtocol, router: ImageViewerRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}

extension ImageViewerPresenter: ImageViewerPresenterProtocol{
    func viewDidLoaded() {
        let image = interactor.getImageForCurrentTemperature()
        view?.showImage(image: image)
    }
}
