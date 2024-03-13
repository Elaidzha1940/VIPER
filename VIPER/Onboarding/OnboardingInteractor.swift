//  /*
//
//  Project: VIPER
//  File: OnboardingInteractor.swift
//  Created by: Elaidzha Shchukin
//  Date: 13.03.2024
//
//  */

import Foundation

protocol OnboardingInteractorProtocol: AnyObject {
    
}

class OnboardingInteractor: OnboardingInteractorProtocol {
    weak var presenter: OnboardingPresenterProtocol?
}
