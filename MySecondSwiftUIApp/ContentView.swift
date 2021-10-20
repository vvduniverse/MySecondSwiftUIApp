//
//  ContentView.swift
//  MySecondSwiftUIApp
//
//  Created by Vahtee Boo on 20.10.2021.
//

import SwiftUI

struct CustomModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.caption2)
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(lineWidth: 1)
            )
            .foregroundColor(Color.blue)
    }
}

struct CustomTextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .padding()
            .foregroundColor(.orange)
            .background(Color.gray)
    }
}

extension View {
    func customM() -> some View {
        modifier(CustomTextModifier())
    }
}
struct ContentView: View {
    
    var body: some View {
        Text("hello, swiftUI")
        customM()
    }
}
//struct ContentView: View {
//    
//    var body: some View {
//        Text("hello, swiftUI")
//            .modifier(CustomTextModifier())
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
