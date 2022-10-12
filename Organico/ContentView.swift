//
//  ContentView.swift
//  Organico
//
//  Created by Peter McGowan on 09/10/2022.
//

import SwiftUI




//let data = [
//    GroomingItem(title: "Emma", productImage: "Jones"),
//    GroomingItem(title: "Mike", productImage: "Thompson"),
//    GroomingItem(title: "Lucy", productImage: "Johnson"),
//    GroomingItem(title: "James", productImage: "Wood"),
//    GroomingItem(title: "Cathy", productImage: "Miller")
//]

struct ContentView: View {
    
    @State var array3D: [[GroomingItem]] = [[
        GroomingItem(id: 1,
        title: "A.Vogel Neem Shampoo (200ml)",
        productImage: "A_Vogel_Neem_Shampoo_200ml",
        price:9.99 ),
        GroomingItem(id: 2,
          title: "Absolute Aromas - Organic Shave Oil (15ml)",
          productImage: "Absolute Aromas_Organic_Shave_Oil_15ml",
          price:9.99)],
        [GroomingItem(id: 3,
            title: "Balmonds Skin Salvation Moisturising Ointment (60ml)",
            productImage: "Balmonds_Skin_Salvation_Moisturising_Ointment_60ml",
            price:9.99),
         GroomingItem(id: 2,
            title: "Absolute Aromas - Organic Shave Oil (15ml)",
            productImage: "Absolute Aromas_Organic_Shave_Oil_15ml",
            price:9.99)
        ],
         [GroomingItem(id: 5,
            title: "BetterYou Magnesium Body Lotion (180ml)",
            productImage: "BetterYou_Magnesium_Body_Lotion_180ml",
            price:9.99)
        , GroomingItem(id: 6,
            title: "BetterYou Magnesium Body Lotion (180ml)",
            productImage: "BetterYou_Magnesium_Body_Lotion_180ml",
            price:9.99)]]

    
    @State var data2: [GroomingItem] = [
        GroomingItem(id: 1,
                     title: "A.Vogel Neem Shampoo (200ml)",
                     productImage: "A_Vogel_Neem_Shampoo_200ml",
                     price:9.99 ),
        GroomingItem(id: 2,
                     title: "Absolute Aromas - Organic Shave Oil (15ml)",
                     productImage: "Absolute Aromas_Organic_Shave_Oil_15ml",
                     price:9.99),
        GroomingItem(id: 3,
                     title: "Balmonds Skin Salvation Moisturising Ointment (60ml)",
                     productImage: "Balmonds_Skin_Salvation_Moisturising_Ointment_60ml",
                     price:9.99),
        GroomingItem(id: 4,
                     title: "Balmonds Skin Salvation Moisturising Ointment (120ml)",
                     productImage: "Balmonds_Skin_Salvation_Moisturising_Ointment_120ml",
                     price:9.99),
        GroomingItem(id: 5,
                     title: "BetterYou Magnesium Body Lotion (180ml)",
                     productImage: "BetterYou_Magnesium_Body_Lotion_180ml",
                     price:9.99),
        GroomingItem(id: 6,
                     title: "BetterYou Magnesium Body Lotion (180ml)",
                     productImage: "BetterYou_Magnesium_Body_Lotion_180ml",
                     price:9.99)
    ]

    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach (data2, id: \.id) { groom in
                    Image(groom.productImage)
                        .resizable()
                        .frame(width: 180, height: 180)
                        .clipShape(RoundedRectangle(cornerRadius: 20))

                    Text(groom.title)
                    Text(groom.price.asCurrencyWith2Decimals())
                    Text("Add to Cart")
               }
            }
        }
    }
}
//private var leftColumn: some View {
//    HStack(spacing: 0) {
//        Text("\(coin.rank)")
//            .font(.caption)
//            .foregroundColor(Color.theme.secondaryText)
//            .frame(minWidth: 30)
//        CoinImageView(coin: coin)
//            .frame(width: 30, height: 30)
//        Text(coin.symbol.uppercased())
//            .font(.headline)
//            .padding(.leading, 6)
//            .foregroundColor(Color.theme.accent)
//    }
//}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
