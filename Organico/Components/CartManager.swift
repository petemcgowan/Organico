//
//  CartManager.swift
//  Organico
//
//  Created by Peter McGowan on 22/10/2021.
//

import SwiftUI

class CartManager: ObservableObject {
    @EnvironmentObject var groomingItems : GroomingItems
    @Published var total: Double = 0.0

    // Payment-related variables
    @Published var paymentSuccess = false
    
//    // Functions to add and remove from cart
    func addToCart(groomingItem: GroomingItem ) {
        groomingItems.cartContents.append(groomingItem)
        total += groomingItem.price
    }

    func removeFromCart(groomingItem: GroomingItem) {
        groomingItems.cartContents = groomingItems.cartContents.filter { $0.id != groomingItem.id }
        total -= groomingItem.price
    }
}
