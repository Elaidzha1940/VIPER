//  /*
//
//  Project: VIPER
//  File: OnboardingViewController.swift
//  Created by: Elaidzha Shchukin
//  Date: 12.03.2024
//
//  */

import UIKit

protocol OnboardingViewProtocol: AnyObject {
    
}

class OnboardingViewController: UIViewController {
    var presenter: OnboardingViewProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        //
    }
}

extension OnboardingViewController: OnboardingViewProtocol {
    
}
