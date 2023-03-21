

import SwiftUI

class ProductCategory : Identifiable, Codable {
    var id: Int
    var title: String
    var productCategoryImage: String
    var products: [ProductItem]

    init(id: Int, title: String, productCategoryImage: String, products: [ProductItem]) {
        self.id = id
        self.title = title
        self.productCategoryImage = productCategoryImage
        self.products = products
    }
}

class ProductCategories: ObservableObject {
    @Published var productCategories: [ProductCategory]

    init () {
        productCategories = []
        print("ProductCategory init")
    }
}
