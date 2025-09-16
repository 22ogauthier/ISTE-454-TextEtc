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
    
    var body: some View {
        
        VStack(alignment: .leading) { //.leading is left justified
            Text("Enter name")
                .fontWeight(.bold)
                .font(.title)
                .foregroundStyle(.gray)
            
            TextField("Enter username...", text: $username,
                      onEditingChanged: { (changed) in print("Username onEditingChanged: \(changed)")}) {
                print("Username onCommit")
            }
            .textFieldStyle(SuperCustomTextFieldStyle())
            
            Button {
                print("Action Button")
            } label: {
                //can be pretty much any view
                Text("Button Label")
            }
            
            Button {
                print("Action Button")
            } label: {
                //can be pretty much any view
                HStack {
                    Image(systemName: "captions.bubble.fill")
                    Text("Greet!")
                } //HStack
            } //Button
            
            Button {
                print("Action Button")
            } label: {
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
            } //Button
            
            Text("Your username: \(username)")
            
        } //VStack
        .padding()
    }
}

#Preview {
    Buttons()
}
