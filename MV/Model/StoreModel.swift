//
//  StoreModel.swift
//  MV
//
//  Created by Shah Md Imran Hossain on 7/5/23.
//

import Foundation

class StoreModel: ObservableObject {
    @Published var products: [Product] = []
    
    let webservice: Webservice
    
    init(webservice: Webservice) {
        self.webservice = webservice
    }
    
    func populateProducts() async {
        do {
            let products = try await webservice.getProducts()
            
        } catch {
            print(error)
        }
    }
}
