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
 struct CarMaker: Identifiable {
     var id = UUID()
     var name: String
 }

 struct CarMakerRow: View {
     var carMaker: CarMaker
     var body: some View {
         Text("Come and drive the \(carMaker.name) car")
     }
 }

 struct ContentView: View {
     var body: some View {
         let firstCM = CarMaker(name: "Tesla")
         let secondCM = CarMaker(name: "Audi")
         let thirdCM = CarMaker(name: "Prosche")
         let forthCM = CarMaker(name: "Daewoo")
         let carMakers = [firstCM, secondCM, thirdCM, forthCM]
         
         return List(carMakers) { carMaker in CarMakerRow(carMaker: carMaker)}
     }
 }

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
             Section(header: Text("Valubale Car markers")) {
                 CarMakerRow(name: "Tesla")
                 CarMakerRow(name: "Audi")
                 CarMakerRow(name: "Porsche")
                 CarMakerRow(name: "ZAZ")
             } .listRowBackground(Color.purple)
             .foregroundColor(.white)
             Section(header: Text("Other Car markers")) {
                 CarMakerRow(name: "Tesla-2")
                 CarMakerRow(name: "Audi-2")
                 CarMakerRow(name: "Porsche-2")
                 CarMakerRow(name: "ZAZ-2")
                 CarMakerRow(name: "Tesla-3")
                 CarMakerRow(name: "Audi-3")
                 CarMakerRow(name: "Porsche-3")
                 CarMakerRow(name: "ZAZ-3")
                 CarMakerRow(name: "Tesla-4")
                 CarMakerRow(name: "Audi-4")
             }
         } .listStyle(GroupedListStyle())
     }
 }
 *************************************
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
 *************************************
 *************************************
 *************************************
 *************************************
 *************************************
 *************************************
 *************************************
 *************************************
 
 */
