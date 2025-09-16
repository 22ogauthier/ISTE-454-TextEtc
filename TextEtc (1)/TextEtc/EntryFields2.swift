//
//  EntryFields2.swift
//  TextEtc
//
//  Created by Olivia Gauthier (RIT Student) on 9/16/25.
//

import SwiftUI

struct EntryFields2: View {
    
    @State private var name = ""
    @State private var location = ""
    @State private var date = Date()
    @State private var hasNextField = false
    @State private var hasPreviousField = true
    
    var body: some View {
        
        Form {
            
            TextField("Name", text: $name, prompt: Text("Enter Name"))
                .submitLabel(.next)
                .onSubmit {
                    print("name submitted")
                }
            
            TextField("Location", text: $location, prompt: Text("Enter location"))
            DatePicker("Date", selection: $date)
            
        } //Form
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Button(action: selectPreviousField) {
                    Label("Previous", systemImage: "chevron.up")
                }
                .disabled(!hasPreviousField)
                
                Button(action: selectNextField) {
                    Label("Next", systemImage: "chevron.down")
                }
                .disabled(!hasNextField)
            }
        }
        
    } //body
    
    private func selectPreviousField() {
        print("selectPreviousField")
    }
    
    private func selectNextField() {
        print("selectNextField")
    }
    
}//View

#Preview {
    EntryFields2()
}
