//
//  ItemDetailView.swift
//  Organico
//
//  Created by Peter McGowan on 18/10/2022.
//


import SwiftUI

struct ItemDetailView: View {
    var groom: GroomingItem

    
    
    var body: some View {
        VStack(spacing: 8) {
        Text(groom.title)
        Image(groom.productImage)
        }
    }
}

//struct ItemDetailView_Previews: PreviewProvider {
////    var test : GroomingItem
//    var test = (id: 4,
//                 title: "Balmonds Skin Salvation Moisturising Ointment (120ml)",
//                 productImage: "Balmonds_Skin_Salvation_Moisturising_Ointment_120ml",
//                 price:9.99)
//
//    static var previews: some View {
//        
//        ItemDetailView()
//    }
//}
