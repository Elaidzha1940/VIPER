//
//  DateService.swift
//  VIPER
//
//  Created by Elaidzha Shchukin on 13.03.2024.
//

import Foundation

class DateService {
    func getDate(completion: @escaping (Date) -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            completion(Date())
        }
    }
}
