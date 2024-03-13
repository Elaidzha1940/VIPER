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
    func showDate(date: String)
    func showWeather(weather: String)
}

class OnboardingViewController: UIViewController {
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var weatherLabel: UILabel!
    var presenter: OnboardingPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoaded()
    }
}

extension OnboardingViewController: OnboardingViewProtocol {
    func showDate(date: String) {
        DispatchQueue.main.async { [self] in
            dateLabel.text = date
        }
    }
    
    func showWeather(weather: String) {
        DispatchQueue.main.async { [self] in
            weatherLabel.text = weather
        }
    }
}
