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
 struct ContentView: View {
     
     @State private var users = ["Nadiia", "Anna", "Vitalii", "Sofia",]
     
     var body: some View {
         NavigationView{
             List {
                 ForEach(users, id: \.self) {user in
                     Text(user)
                 } .onDelete(perform: delete)
             }
         }
     }
     
     func delete(at offset: IndexSet) {
         users.remove(atOffsets: offset)
     }
 }
 *************************************
 struct ContentView: View {
     
     @State private var users = ["Nadiia", "Anna", "Vitalii", "Sofia",]
     
     var body: some View {
         NavigationView{
             List {
                 ForEach(users, id: \.self) {user in
                     Text(user)
                 } .onMove(perform: move)
             }
             .navigationBarItems(trailing: EditButton())
         }
     }
     
     func move(from source: IndexSet, to destination: Int) {
         users.move(fromOffsets: source, toOffset: destination)
     }
 }
 *************************************
 struct ContentView: View {
     
     @State private var selectedView = 1
     
     var body: some View {
         TabView(selection: $selectedView) {
             Text("Bus View")
                 .tabItem {
                     Image(systemName: "bus")
                     Text("BUS") }.tag(1)
             Text("Car View")
                 .tabItem {
                     Image(systemName: "car")
                     Text("CAR") }.tag(2)
         }
         
     }
 }
 *************************************
 struct ContentView: View {
     
     @State private var cars = ["Tesla", "Audi", "BMW", "Porsche"]
     @State private var selectedCar = 0
     @State private var aditionalSettings = false
     
     
     var body: some View {
         NavigationView {
             Form {
                 Section(header: Text("Cars")) {
                     Picker(selection: $selectedCar, label: Text("Select a car")) {
                         ForEach(0..<cars.count) {
                             Text(self.cars[$0])
                         }
                     } .pickerStyle(SegmentedPickerStyle())
                 }
                 Toggle(isOn: $aditionalSettings) {
                     Text("Aditional settings")
                 }
                 Button(action: {}) {
                     Text("Save changes")
                 } .disabled(!aditionalSettings)
             } .navigationBarTitle("Cars yopt!")
         }
     }
 }

 *************************************
 struct ContentView: View {
     
     @State private var showingAlert = false
     
     var body: some View {
         Button("Show Alert") {
             self.showingAlert = true
         } .alert(isPresented: $showingAlert) {
             Alert(title: Text("HelloSwiftUI"),
                   message: Text("Some detail message"),
                   dismissButton: .default(Text("OK")))
         }
     }
 }
 *************************************
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
 *************************************
 struct ContentView: View {
     
     @State private var showingAlert = false

     
     var body: some View {
         Button(action: {
             self.showingAlert = true
         }) {
             Text("Show alert")
         }.alert(isPresented: $showingAlert) {
          Alert(title: Text("Are you shure you want to delete this?"),
                message: Text("There is no way back!"),
                primaryButton: .destructive(Text("Delete")) {
                 print("Deleting...")
                },
                secondaryButton: Alert.Button.cancel())
         }
     }
 }
 *************************************
 struct ContentView: View {
     
     @State private var showingSheet = false
     
     
     var body: some View {
         Button(action: {
             self.showingSheet = true
         }) {
             Text("Show action sheet")
         }.actionSheet(isPresented: $showingSheet) {
             ActionSheet(title: Text("What do you want to do?"), message: Text("There is only one choise"), buttons: [.cancel(), .default(Text("Some default button")), .destructive(Text("Мати моя рідна"))])
         }
     }
 }
 *************************************
 struct ContentView: View {
     
     @State private var useGreenText = false
     
     
     var body: some View {
         Button("Анна, доця моя ❤️") {
             self.useGreenText.toggle()
         }.foregroundColor(useGreenText ? .blue : .green)
         .font(useGreenText ? .headline : .largeTitle)
     }
 }
 *************************************
 struct CustomText: View {
     var name: String
     
     var body: some View {
         Text(name)
             .font(.largeTitle)
             .padding()
             .foregroundColor(.orange)
             .background(Color.gray)
     }
 }

 struct ContentView: View {
     
     var body: some View {
         VStack(spacing: 20) {
             CustomText(name: "First text")
             CustomText(name: "Second text")
         }
     }
 }
 *************************************
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
 *************************************
 *************************************
 *************************************
 *************************************
 *************************************
 
 */
