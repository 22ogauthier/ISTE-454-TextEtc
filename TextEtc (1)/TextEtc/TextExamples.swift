//
//  TextExamples.swift
//  TextEtc
//
//  Created by Olivia Gauthier (RIT Student) on 9/11/25.
//

import SwiftUI

struct TextExamples: View {
    var body: some View {
        
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tempus, dolor eu malesuada molestie, dui sem semper metus, condimentum maximus risus ipsum vel turpis. Sed nec vehicula magna. Nunc tempus iaculis varius. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis eget enim in lorem tristique gravida sit amet eu erat. Suspendisse fringilla risus euismod, consequat lectus iaculis, consequat tortor. Curabitur bibendum justo ante. Aliquam et mauris sed nunc facilisis dictum in eu turpis. Fusce tristique felis semper purus placerat scelerisque. Praesent lectus arcu, luctus id feugiat ac, elementum vitae enim. Suspendisse a commodo metus. Fusce sodales venenatis dui, vitae scelerisque risus iaculis sed. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Quisque elementum orci eget tempus pharetra. Praesent arcu massa, dignissim quis eros quis, facilisis tempor lacus. Morbi sapien leo, porta sit amet dui at, congue rhoncus justo.")
            .fontWeight(.bold)
            .font(.title)
            .foregroundStyle(.gray)
            .multilineTextAlignment(.center)
            .lineLimit(3...6)
            .truncationMode(.head)
            .lineSpacing(10)
        //.padding()
            .safeAreaPadding(10)
        //.rotationEffect(.degrees(20), anchor: UnitPoint(x: 0, y: 0))
            .rotation3DEffect(.degrees(60), axis: (x:1, y:0, z:0))
            .shadow(color: .gray, radius: 2, x: 0, y:15)
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.system(.largeTitle, design: .rounded))
//            .font(.system(size: 20))
//            .foregroundStyle(.green)
            .font(.custom("Helvetica Neue", size: 25))
        
    } //body
} //struct

#Preview {
    TextExamples()
}
