//
//  StoreModel.swift
//  MV
//
//  Created by Shah Md Imran Hossain on 7/5/23.
//

import Foundation

// when you have a publised property of a class
// then you need to make sure that class in the main thread
// for that just add @MainActor before class delaration
@MainActor
class StoreModel: ObservableObject {
    @Published var products: [Product] = []
    
    let webservice: Webservice
    
    init(webservice: Webservice) {
        self.webservice = webservice
    }
    
    func populateProducts() async throws {
//        do {
//            products = try await webservice.getProducts()
//        } catch {
//            print(error)
//        }
        
        products = try await webservice.getProducts()
    }
}
