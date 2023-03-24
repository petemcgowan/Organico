//
//  ProductItem.swift
//  Organico
//
//

import SwiftUI

class ProductItem : Identifiable, Codable {
    var id: Int
    var title: String
    var productImage: String
    var price: Double
    var category: String

    init(id: Int, title: String, productImage: String, price: Double, category: String) {
        self.id = id
        self.title = title
        self.productImage = productImage
        self.price = price
        self.category = category
    }
}

/*@MainActor*/ class ProductItems: ObservableObject {
    @Published var cartContents: [ProductItem]

    init () {
        cartContents = []
        print("ProductItem init")
    }
}
