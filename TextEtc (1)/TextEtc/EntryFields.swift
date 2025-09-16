//
//  EntryFields.swift
//  TextEtc
//
//  Created by Olivia Gauthier (RIT Student) on 9/16/25.
//

import SwiftUI

struct SuperCustomTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<_Label>) -> some View {
        configuration
        //.padding(10)
            .foregroundStyle(.white)
            .background(.blue)
            .cornerRadius(5)
            .padding(10)
    }
}

struct EntryFields: View {
    
    @State var username = ""
    
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
//            .foregroundStyle(.white)
//            .background(.blue)
//            .cornerRadius(5)
//            .textFieldStyle(RoundedBorderTextFieldStyle())
            .textFieldStyle(SuperCustomTextFieldStyle())
            
            Text("Your username: \(username)")
            
        } //VStack
        .padding()
    }
}

#Preview {
    EntryFields(username: "Liv")
}
