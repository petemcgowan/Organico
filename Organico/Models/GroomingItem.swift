//
//  MensGroomingModel.swift
//  Organico
//
//  Created by Peter McGowan on 12/10/2022.
//

import SwiftUI

class GroomingItem : Identifiable, Codable {
    var id: Int
    var title: String
    var productImage: String
    var price: Double
    
    init(id: Int, title: String, productImage: String, price: Double) {
        self.id = id
        self.title = title
        self.productImage = productImage
        self.price = price
    }
}

/*@MainActor*/ class GroomingItems: ObservableObject {
    @Published var cartContents: [GroomingItem]

    init () {
        cartContents = []
        print("GroomingItem init")
    }
}
