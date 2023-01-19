//
//  RectangleView.swift
//  areaAndPermimeterCalculator
//
//  Created by Cooper Lawson on 2023-01-19.
//

import SwiftUI

struct RectangleView: View {
    
   // Stored Properties
    let length: Double = 7
    let width: Double = 5
    
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
