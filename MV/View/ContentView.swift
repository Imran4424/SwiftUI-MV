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
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(StoreModel(webservice: Webservice()))
    }
}

// SwiftUI views
// not only views but also view model
// Model and ViewModel - View in SwiftUI
