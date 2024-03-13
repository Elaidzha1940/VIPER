//  /*
//
//  Project: VIPER
//  File: ImageViewerInteractor.swift
//  Created by: Elaidzha Shchukin
//  Date: 13.03.2024
//
//  */

import Foundation

protocol ImageViewerInteractorProtocol: AnyObject {
    
}

class ImageViewerInteractor: ImageViewerInteractorProtocol {
    weak var presenter: ImageViewerPresenterProtocol?
}
