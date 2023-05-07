//
//  StoreModel.swift
//  MV
//
//  Created by Shah Md Imran Hossain on 7/5/23.
//

import Foundation

class StoreModel: ObservableObject {
    @Published var products: [Product] = []
    
    func populateProducts() async {
        
    }
}
