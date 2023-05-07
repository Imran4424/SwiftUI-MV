//
//  ContentView.swift
//  MV
//
//  Created by Shah Md Imran Hossain on 7/5/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// SwiftUI views
// not only views but also view model
// Model and ViewModel - View in SwiftUI
