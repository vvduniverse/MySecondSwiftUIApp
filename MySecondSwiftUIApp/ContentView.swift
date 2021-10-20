//
//  ContentView.swift
//  MySecondSwiftUIApp
//
//  Created by Vahtee Boo on 20.10.2021.
//

import SwiftUI


struct ContentView: View {
    
    @State private var showingAlert1 = false
    @State private var showingAlert2 = false
    @State private var showingAlert3 = false
    
    var body: some View {
        HStack {
            Button("Show Alert 1") {
                self.showingAlert1 = true
            } .alert(isPresented: $showingAlert1) {
                Alert(title: Text("HelloSwiftUI 1"),
                      message: Text("Some detail message 1"),
                      dismissButton: .default(Text("OK 1")))
            }
            Button("Show Alert 2") {
                self.showingAlert2 = true
            } .alert(isPresented: $showingAlert2) {
                Alert(title: Text("HelloSwiftUI 2"),
                      message: Text("Some detail message 2"),
                      dismissButton: .cancel() )
            }
            Button("Show 3") {
                self.showingAlert3 = true
            } .alert(isPresented: $showingAlert3) {
                Alert(title: Text("HelloSwiftUI 3"),
                      dismissButton: .default(Text("OK3")) )
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
