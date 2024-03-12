//  /*
//
//  Project: VIPER
//  File: ViewController.swift
//  Created by: Elaidzha Shchukin
//  Date: 12.03.2024
//
//  */

import UIKit

protocol OnboardingViewProtocol: AnyObject {
    
}

class ViewController: UIViewController {
    var presenter: OnboardingViewProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        //
    }
}

extension ViewController: OnboardingViewProtocol {
    
}
