//
//  CartButton.swift
//  Organico
//
//  Created by Peter McGowan on 22/10/2021.
//

import SwiftUI

struct CartButton: View {
    var numberOfGroomingItems: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "cart")
                .padding(.top, 5)
                .foregroundColor(Color("fontColor"))
            
            if numberOfGroomingItems > 0 {
                Text("\(numberOfGroomingItems)")
                    .font(.caption2).bold()
                    .foregroundColor(Color("headerFontColor"))
                    .frame(width: 15, height: 15)
                    .background(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                    .cornerRadius(50)
            }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfGroomingItems: 1)
    }
}
