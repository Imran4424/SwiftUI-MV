//
//  Product.swift
//  MV
//
//  Created by Shah Md Imran Hossain on 7/5/23.
//

import Foundation

struct Product: Decodable, Identifiable {
    let id: Int
    let title: String
    let price: Double
}
