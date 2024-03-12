//  /*
//
//  Project: VIPER
//  File: DateService.swift
//  Created by: Elaidzha Shchukin
//  Date: 13.03.2024
//
//  */

import Foundation

class DateService {
    func getDate(completion: @escaping (Date) -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            completion(Date())
        }
    }
}
