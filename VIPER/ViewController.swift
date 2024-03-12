//  /*
//
//  Project: VIPER
//  File: ViewController.swift
//  Created by: Elaidzha Shchukin
//  Date: 12.03.2024
//
//  */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //
    }
}


import UIKit

class YourViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "yourImage")
        view.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50)
        ])
    }
}
