//
//  NumberFormatter.swift
//  MV
//
//  Created by Shah Md Imran Hossain on 7/5/23.
//

import Foundation

extension NumberFormatter {
    static var currency: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }
}
