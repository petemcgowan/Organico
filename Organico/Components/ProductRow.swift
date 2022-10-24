//
//  ProductRow.swift
//  Organico
//
//  Created by Peter McGowan on 22/10/2022.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var groomingItems: GroomingItems
    var groomingItem: GroomingItem

    var body: some View {
        HStack(spacing: 20) {
            Image(groomingItem.productImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)

            VStack(alignment: .leading, spacing: 10) {
                Text(groomingItem.title)
                    .bold()

                Text("$\(groomingItem.price)")
            }
            
            Spacer()

            Image(systemName: "trash")
                .foregroundColor(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                .onTapGesture {
                    groomingItems.cartContents =   groomingItems.cartContents.filter { $0.id != groomingItem.id }
                    cartManager.total -= groomingItem.price
//                    cartManager.removeFromCart(groomingItem: groomingItem)
                }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static let groomingOfArrayPreview = GroomingItem(id: 1,
                     title: "A.Vogel Neem Shampoo (200ml)",
                     productImage: "A_Vogel_Neem_Shampoo_200ml",
                     price: 9.99)
    
    static var previews: some View {

        ProductRow(groomingItem: groomingOfArrayPreview )
//            .environmentObject(cartManager)
    }
}
