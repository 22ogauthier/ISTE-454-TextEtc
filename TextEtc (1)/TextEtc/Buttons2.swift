//
//  Buttons2.swift
//  TextEtc
//
//  Created by Olivia Gauthier (RIT Student) on 9/16/25.
//

import SwiftUI

struct Buttons2: View {
    var body: some View {
     
        VStack {
            
            Button("Add") {
                //action
            }
            .buttonStyle(.bordered)
            .tint(.green)
            .buttonStyle(.borderedProminent)
            
            Button("Subtract") {
                //action
            }
            .tint(.blue)
            .buttonStyle(.glass)
            
            Button("Multiply") {
                //action
            }
            .tint(.red)
            .buttonStyle(.glassProminent)
            
            Button("Divide") {
                //action
            }
            .tint(.purple)
            
        } //VStack
        .buttonStyle(.bordered)
        .tint(.green)
        .controlSize(.large)
        .padding(20)
        .background(.yellow)
        
    } //body
} //View

#Preview {
    Buttons2()
}
