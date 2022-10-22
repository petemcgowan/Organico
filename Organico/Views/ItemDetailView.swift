
import SwiftUI

struct ItemDetailView: View {
    var groomingOfArray: GroomingItem

    var body: some View {
        VStack(spacing: 20.0) {
            Text(groomingOfArray.title)
            Image(groomingOfArray.productImage)
                .resizable()
                .scaledToFill()
            Text(groomingOfArray.price.asCurrencyWith2Decimals())
            Button(action: {
                print("Add To Cart in Grooming detail has been clicked")
             }, label: {
                 Text("Add To Cart")
             })
        }
        .navigationTitle("Control Room")
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static let groomingOfArrayPreview = GroomingItem(id: 6,
                 title: "BetterYou Magnesium Body Lotion (180ml)",
                 productImage: "BetterYou_Magnesium_Body_Lotion_180ml",
                 price:9.99
    )

    static var previews: some View {
        NavigationView {
            ItemDetailView(groomingOfArray: groomingOfArrayPreview)
        }
    }
}
