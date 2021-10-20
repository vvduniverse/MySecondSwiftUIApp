//
//  ContentView.swift
//  MySecondSwiftUIApp
//
//  Created by Vahtee Boo on 20.10.2021.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView{
            Text("Learning SwiftUI")
                .navigationBarTitle("Welcome", displayMode: .inline)
                .navigationBarItems(leading:
                                        HStack {
                                            Button("Edit") {
                                                print("Button edit tapped")
                                            }
                                            Button("Cancel") {
                                                print("Button cancel tapped")
                                            }
                                        }
                )
        }
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
