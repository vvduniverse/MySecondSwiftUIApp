//
//  ContentView.swift
//  MySecondSwiftUIApp
//
//  Created by Vahtee Boo on 20.10.2021.
//

import SwiftUI

struct CarMakerRow: View {
    var name: String
    
    var body: some View {
        Text("Car maker: \(name)")
    }
}

struct ContentView: View {
    var body: some View {
        List {
            CarMakerRow(name: "Tesla")
            CarMakerRow(name: "Audi")
            CarMakerRow(name: "Porsche")
            CarMakerRow(name: "ZAZ")
        }
    }
}
















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
