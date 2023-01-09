//
//  CartView.swift
//  Organico
//
//  Created by Peter McGowan on 18/10/2021.
//

import SwiftUI


import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var groomingItems: GroomingItems
    
    var body: some View {
        ScrollView {
            if cartManager.paymentSuccess {
                Text("Thanks for your purchase! You'll get cozy in our comfy sweaters soon! You'll also receive an email confirmation shortly.")
                    .padding()
            } else {
                if groomingItems.cartContents.count > 0 {
                    ForEach(groomingItems.cartContents, id: \.id) { groomingItem in
                        ProductRow(groomingItem: groomingItem)
                    }

                    HStack {
                        Text("Your cart total is")
                        Spacer()
                        Text("$\(cartManager.total).00")
                            .bold()
                    }
                    .padding()
                    
                    PaymentButton(action: cartManager.pay)
                        .padding()
                    
                } else {
                    Text("Your cart is empty.")
                }
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
        .onDisappear {
            if cartManager.paymentSuccess {
                cartManager.paymentSuccess = false
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}

