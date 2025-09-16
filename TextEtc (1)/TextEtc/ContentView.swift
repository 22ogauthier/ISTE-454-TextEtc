//
//  ContentView.swift
//  TextEtc
//
//  Created by Olivia Gauthier (RIT Student) on 9/11/25.
//

import SwiftUI
import OSLog //for logger

//create a logger for each part of your app
let logger = Logger(
    subsystem: "com.gauthier.olivia.TextEtc", category: "ContentView"
)
 
struct ContentView: View {
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text("This is plain text")
                .font(.title2)
            
            //basic AttributedString
            Text(createSimpleAttributedString())
                .font(.title2) //Font applied to the whole Text view, but AttributedString can override parts
            
            //with multiple styles
            Text(createStyledAttributeString())
                .font(.body) //default for the Text view
                .padding()
                .background(Color.yellow.opacity(0.2))
                .cornerRadius(10)
            
            //link
            Text(createLinkedAttributed())
                .font(.body)
                .padding()
                .background(Color.blue.opacity(0.1))
                .cornerRadius(10)
            
        } //VStack
        
//     Text("Hello World") //view
//            .fontWeight(.bold) //modifier
//            .bold()
//            .font(.title)
        
    } //body
    
    //function to create a simple AttributedString
    func createSimpleAttributedString() -> AttributedString {
        var attributedString = AttributedString("Hello Swift!")
        
        //print("Attributed String: \(attributedString)")
        logger.info("Attributed String is \(attributedString)")
        logger.debug("one is \(attributedString)")
        logger.warning("two is \(attributedString)")
        
        attributedString.font = .largeTitle
        attributedString.foregroundColor = .purple
        attributedString.underlineStyle = Text.LineStyle(pattern: .solid, color: .purple)
        
        return attributedString
    } //createSAS
    
    func createStyledAttributeString() -> AttributedString{
        var attributedString = AttributedString("This is some bold text and this is red.")
        
        //bold the first part
        if let range = attributedString.range(of: "bold text") {
            attributedString[range].font = .headline.bold()
            attributedString[range].foregroundColor = .green
        }
        
        //apply red to the second part
        if let range = attributedString.range(of: "red") {
            attributedString[range].font = .headline.italic()
            attributedString[range].foregroundColor = .red
        }
        
        //apply underline to "text and this"
        if let range = attributedString.range(of: "text and this") {
            attributedString[range].underlineStyle = .single
        }
        
        return attributedString
    }
    
    func createLinkedAttributed() -> AttributedString{
        var attributedString = AttributedString("Visit Apple's Swift website.")

        if let range = attributedString.range(of: "Apple's Swift website") {
            attributedString[range].link = URL(string: "https://swift.org/")
            attributedString[range].foregroundColor = .blue
            attributedString[range].underlineStyle = .single
        }
        
        return attributedString
    }
    
} //ContentViw

#Preview {
    ContentView()
}
