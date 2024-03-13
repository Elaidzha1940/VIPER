//  /*
//
//  Project: VIPER
//  File: ImageViewerViewController.swift
//  Created by: Elaidzha Shchukin
//  Date: 13.03.2024
//
//  */

import UIKit

class ImageViewerViewController: UIViewController {
    var presenter: OnboardingPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoaded()
    }
}
