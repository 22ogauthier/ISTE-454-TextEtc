//

//  Buttons.swift

//  TextEtc

//

//  Created by Olivia Gauthier (RIT Student) on 9/16/25.

//



import SwiftUI

let gradient = LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)



struct Buttons: View {

    

    @State private var username = ""

    @State private var showText = false

    @State private var showAlert = false

    

    var body: some View {

        

        VStack(alignment: .center) { //.leading is left justified

           

            UsernameView(username: $username, showText: $showText)

            

            

//            Button {

//                print("Action Button")

//            } label: {

//                //can be pretty much any view

//                Text("Button Label")

//            }

            

//            Button {

//                print("Action Button")

//            } label: {

//                //can be pretty much any view

//                HStack {

//                    Image(systemName: "captions.bubble.fill")

//                    Text("Greet!")

//                } //HStack

//            } //Button

            

            Spacer()

            

            Button {

                print("Action Button")

                showAlert = true

            } label: {

                //can be pretty much any view

                ZStack {

                    GreetButton()

                    Text("Say Hello!")

                        .font(.system(.caption, design: .rounded))

                        .fontWeight(.bold)

                        .foregroundStyle(.white)

                        .padding()

                        .background(Color(red: 255/255, green: 183/255, blue: 37/255))

                        //.background(Color(uiColor: <#T##UIColor#>))

                        .offset(x: 0, y:35)

                } //ZStack

                    

                

            } //Button

            .shadow(color: .blue, radius: 10)

            .alert("Hey there!", isPresented: $showAlert) {

                

                //add buttons here if you want

                Button("Cancel", role: .cancel) {

                    

                }

                

                Button("No", role: .destructive) {

                    print("I don't want to say goodbye!")

                }

                

                //Button("Save", role: .confirm) {}

                

            } message: {

            Text("Hello \(username)")

            }

            Spacer()

            Text("Your username: \(username)")

                .opacity(showText ? 1 : 0)

            

        } //VStack

        .padding()

    }//body

}//View



struct UsernameView: View {

    

    @Environment(\.dynamicTypeSize) var dynamicTypeSize

    

    @Binding var username: String

    @Binding var showText: Bool

    

    var body: some View {

        

        let layout = dynamicTypeSize >= .xLarge ?

            AnyLayout(HStackLayout()) : AnyLayout(VStackLayout())

        

        layout {

            Text("Enter name")

                .fontWeight(.bold)

                .font(.title)

                .foregroundStyle(.gray)

            

            TextField("Enter username...", text: $username,

                      onEditingChanged: { (changed) in print("Username onEditingChanged: \(changed)")}) {

                print("Username onCommit")

            }

                      .textFieldStyle(SuperCustomTextFieldStyle())

        } //HStack

    }

}



struct GreetButton: View {

    

    var body: some View {

        //can be pretty much any view

        HStack {

            Image(systemName: "captions.bubble.fill")

            Text("Greet!")

                .foregroundStyle(.white)

        } //HStack

        .padding(10)

        .background(Capsule()

            .fill(gradient)

            .overlay(Capsule()

                .stroke(gradient, lineWidth: 2)

            )

                    //.shadow(color: .blue, radius: 10)

        )

//        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 400, maxHeight: .infinity)

    }

}



#Preview {

    Buttons()

}
