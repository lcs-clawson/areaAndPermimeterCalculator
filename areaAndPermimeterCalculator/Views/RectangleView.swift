//
//  RectangleView.swift
//  areaAndPermimeterCalculator
//
//  Created by Cooper Lawson on 2023-01-19.
//

import SwiftUI

struct RectangleView: View {
    
   // Stored Properties
    // @State is a property wrapper that essentially tells swiftui to update the use interface when these values change
    @State var length: Double = 100
    @State var width: Double = 5
    
    // MARK Computed Properties
    var area: Double {
        return length * width
    }
    
    // Expressing the user interface
    var body: some View {
        VStack(spacing: 15) {
           
            HStack{
                Image("Rectangle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                
                Spacer()
            }
            
            Text("Length")
                .font(.title2)
                .bold()
            
            Slider(value: $length, in: 0...100, label: { Text("Length") }, minimumValueLabel: { Text("0") }, maximumValueLabel: { Text("100") })
            
            // Use string interpolation to convert
            // the Double data type to text (String)
            //
            // (variable)
            Text("\(length)")
                .font(.title2)
            
            Text("\(width)")
                .font(.title2)
                .bold()
            
            Text("5.0")
                .font(.title2)
            
            Text("\(area)")
                .font(.title2)
                .bold()
            
            Text("35.0")
                .font(.title2)
            
            
            Spacer()
            
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
