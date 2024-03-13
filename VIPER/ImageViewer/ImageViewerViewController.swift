//  /*
//
//  Project: VIPER
//  File: ImageViewerViewController.swift
//  Created by: Elaidzha Shchukin
//  Date: 13.03.2024
//
//  */

import UIKit

protocol ImageViewerViewProtocol: AnyObject {
    func showImage(image: UIImage?)
}

class ImageViewerViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    //MARK: - Public
    var presenter: ImageViewerPresenterProtocol?
    
    //MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
}

//MARK: - Private function
private extension ImageViewerViewController {
    func initialize() {
        //
    }
}

//MARK: - ImageViewerViewProtocol
extension ImageViewerViewController: ImageViewerViewProtocol {
    func showImage(image: UIImage?) {
        DispatchQueue.main.async {
            self.imageView.image = image
        }
    }
}
