//
//  ContentView.swift
//  MV
//
//  Created by Shah Md Imran Hossain on 7/5/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var storeModel: StoreModel
    
    var body: some View {
        VStack {
            List(storeModel.products) { product in
                Text(product.title)
                Text(product.price as NSNumber, formatter: NumberFormatter.currency)
            }
        }
        .task {
            await populateProducts()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(StoreModel(webservice: Webservice()))
    }
}

// MARK: - Methods
extension ContentView {
    private func populateProducts() async {
        do {
            try await storeModel.populateProducts()
        } catch {
            print(error)
        }
    }
}

// SwiftUI views
// not only views but also view model
// Model and ViewModel - View in SwiftUI
