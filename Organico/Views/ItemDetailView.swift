
import SwiftUI

struct ItemDetailView: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var groomingItems : GroomingItems
    var groomingOfArray: GroomingItem

    var body: some View {
        VStack(spacing: 20.0) {
            Text(groomingOfArray.title)   // todo: this is a placeholder, bring in the other elements so I can use a "sub-title" here
            Image(groomingOfArray.productImage)
                .resizable()
                .scaledToFill()
            Text(groomingOfArray.price.asCurrencyWith2Decimals())
            Button(action: {
                print("Add To Cart in Grooming detail has been clicked")

                let groomingItem = GroomingItem(id: groomingOfArray.id, title: groomingOfArray.title, productImage: groomingOfArray.productImage, price: groomingOfArray.price)
                groomingItems.cartContents.append(groomingItem)
                cartManager.total += groomingItem.price
                print ("Add to cart from Item view")
                print(groomingItem.id)
                print(groomingItem.price)
                print(cartManager.total)


             }, label: {
                 Text("Add To Cart")
             })
        }
        .navigationTitle(groomingOfArray.title)   //  todo this needs to be styled, currently it doesn't quite fit, etc
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static let groomingOfArrayPreview = GroomingItem(id: 1,
                     title: "A.Vogel Neem Shampoo (200ml)",
                     productImage: "A_Vogel_Neem_Shampoo_200ml",
                     price: 9.99)

    static var previews: some View {
//        NavigationView {
            ItemDetailView(groomingOfArray: groomingOfArrayPreview)
                .environmentObject(CartManager())
//        }
    }
}
