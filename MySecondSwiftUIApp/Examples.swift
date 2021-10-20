//
//  Examples.swift
//  MySecondSwiftUIApp
//
//  Created by Vahtee Boo on 20.10.2021.
//

/*
 *************************************
 Image("banana")
     .resizable()
     .aspectRatio(contentMode: .fit)
     .gesture(
         DragGesture(minimumDistance: 30)
             .onEnded {_ in
                 print("Eat the banana, bich!")
             }
     )
 *************************************
 Image("banana")
     .resizable()
     .aspectRatio(contentMode: .fit)
     .gesture(
         LongPressGesture(minimumDuration: 3)
             .onEnded {_ in
                 print("Eat the banana, bich!")
             }
     )
 *************************************
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
 *************************************
 *************************************
 *************************************
 *************************************
 */
