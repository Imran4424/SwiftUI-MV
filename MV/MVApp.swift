//
//  MVApp.swift
//  MV
//
//  Created by Shah Md Imran Hossain on 7/5/23.
//

import SwiftUI

@main
struct MVApp: App {
    @StateObject private var storeModel = StoreModel(webservice: Webservice())
    
    var body: some Scene {
        WindowGroup {
            // this store model will be availabe to all view
            // and views inside content view
            // environment object fact
            ContentView().environmentObject(storeModel)
        }
    }
}
