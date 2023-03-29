//
//  ProductCategoryView.swift
//  Organico
//
//  Created by Peter McGowan on 18/03/2023.
//

import SwiftUI

struct ProductCategoryView: View {
    @EnvironmentObject var recipeItemObject : RecipeItems
    
    @State var nutsProducts: [ProductItem] = [
        ProductItem(id: 1,
                    title: "Almonds Organic - (1kg) Zero Waste",
                    productImage: "Almonds Organic - (1kg) Zero Waste",
                    price:27.95,
                    category: "nuts"),
        ProductItem(id: 2,
                    title: "Almonds Organic Zero Waste (500g)",
                    productImage: "Almonds Organic - (1kg) Zero Waste",
                    price:13.97,
                    category: "nuts"),
        ProductItem(id: 3,
                    title: "Cashews Whole Organic - Zero Waste (1kg)",
                    productImage: "Cashews Whole Organic - Zero Waste (1kg)",
                    price:25.95,
                    category: "nuts"),
        ProductItem(id: 4,
                    title: "Cashews Whole Organic - Zero Waste (500g)",
                    productImage: "Cashews Whole Organic - Zero Waste (1kg)",
                    price:12.97,
                    category: "nuts"),
        ProductItem(id: 5,
                    title: "Hazelnuts Organic - Zero Waste (1kg)",
                    productImage: "Hazelnuts Organic - Zero Waste (1kg)",
                    price:23.95,
                    category: "nuts"),
        ProductItem(id: 6,
                    title: "Hazelnuts Organic - Zero Waste (500g)",
                    productImage: "Hazelnuts Organic - Zero Waste (1kg)",
                    price:11.97,
                    category: "nuts")
    ]
    @State var seedsProducts: [ProductItem] = [
        ProductItem(id: 7,
                    title: "Chia Seeds Organic - Zero Waste (1kg)",
                    productImage: "Chia Seeds Organic - Zero Waste (1kg)",
                    price:15.95,
                    category: "seeds"),
        ProductItem(id: 8,
                    title: "Chia Seeds Organic - Zero Waste (500g)",
                    productImage: "Chia Seeds Organic - Zero Waste (1kg)",
                    price:7.97,
                    category: "seeds"),
        ProductItem(id: 9,
                    title: "Golden Linseed Organic - Zero Waste (1kg)",
                    productImage: "Golden Linseed Organic - Zero Waste (1kg)",
                    price:7.95,
                    category: "seeds"),
        ProductItem(id: 10,
                    title: "Golden Linseed Organic - Zero Waste (500g)",
                    productImage: "Golden Linseed Organic - Zero Waste (1kg)",
                    price:3.97,
                    category: "seeds"),
        ProductItem(id: 11,
                    title: "Linseed Brown Organic - Zero Waste (1kg)",
                    productImage: "Linseed Brown Organic - Zero Waste (1kg)",
                    price:5.75,
                    category: "seeds"),
        ProductItem(id: 12,
                    title: "Linseed Brown Organic - Zero Waste (500g)",
                    productImage: "Linseed Brown Organic - Zero Waste (1kg)",
                    price:2.87,
                    category: "seeds"),
        ProductItem(id: 13,
                    title: "Omega Four Seeds Mix Organic - Zero Waste (1kg)",
                    productImage: "Omega Four Seeds Mix Organic - Zero Waste (1kg)",
                    price:8.95,
                    category: "seeds"),
        ProductItem(id: 14,
                    title: "Omega Four Seeds Mix Organic - Zero Waste (500g)",
                    productImage: "Omega Four Seeds Mix Organic - Zero Waste (1kg)",
                    price:4.47,
                    category: "seeds"),
        ProductItem(id: 15,
                    title: "Pumpkin Seeds Organic - Zero Waste (1kg)",
                    productImage: "Pumpkin Seeds Organic - Zero Waste (1kg)",
                    price:15.95,
                    category: "seeds"),
        ProductItem(id: 16,
                    title: "Pumpkin Seeds Organic - Zero Waste (500g)",
                    productImage: "Pumpkin Seeds Organic - Zero Waste (1kg)",
                    price:7.98,
                    category: "seeds"),
        ProductItem(id: 17,
                    title: "Quinoa Organic Zero Waste 1kg",
                    productImage: "Quinoa Organic Zero Waste 1kg",
                    price:5.95,
                    category: "seeds"),
        ProductItem(id: 18,
                    title: "Quinoa Organic Zero Waste 500g",
                    productImage: "Quinoa Organic Zero Waste 1kg",
                    price:2.98,
                    category: "seeds"),
        ProductItem(id: 19,
                    title: "Sesame Seeds Organic - Zero Waste (1kg)",
                    productImage: "sesame-seeds-500x500",
                    price:7.95,
                    category: "seeds"),
        ProductItem(id: 20,
                    title: "Sesame Seeds Organic - Zero Waste (500g)",
                    productImage: "sesame-seeds-500x500",
                    price:3.98,
                    category: "seeds"),
        ProductItem(id: 21,
                    title: "Sunflower Seeds Organic - Zero Waste (1kg)",
                    productImage: "Sunflower Seeds Organic - Zero Waste (1kg)",
                    price:7.95,
                    category: "seeds"),
        ProductItem(id: 22,
                    title: "Sunflower Seeds Organic - Zero Waste (500g)",
                    productImage: "Sunflower Seeds Organic - Zero Waste (1kg)",
                    price:2.63,
                    category: "seeds")
    ]
    @State var cerealProducts: [ProductItem] = [
        ProductItem(id: 23,
                    title: "Buckwheat Raw Organic - Zero Waste (1kg)",
                    productImage: "Buckwheat Raw Organic - Zero Waste (1kg)",
                    price:7.95,
                    category: "cereal"),
        ProductItem(id: 24,
                    title: "Buckwheat Raw Organic Zero Waste 500g",
                    productImage: "Buckwheat Raw Organic - Zero Waste (1kg)",
                    price:3.98,
                    category: "cereal"),
        ProductItem(id: 25,
                    title: "Cereal Hi Fibre Organic Zero Waste 1kg",
                    productImage: "Cereal High Fibre Organic Zero Waste 1kg",
                    price:10.95,
                    category: "cereal"),
        ProductItem(id: 26,
                    title: "Cereal Hi Fibre Organic Zero Waste 500g",
                    productImage: "Cereal High Fibre Organic Zero Waste 1kg",
                    price:5.47,
                    category: "cereal"),
        ProductItem(id: 27,
                    title: "Millet Flakes Organic - Zero Waste (1kg)",
                    productImage: "millet-flakes-organic",
                    price:8.25,
                    category: "cereal"),
        ProductItem(id: 28,
                    title: "Millet Flakes Organic - Zero Waste (500g)",
                    productImage: "millet-flakes-organic",
                    price:4.13,
                    category: "cereal"),
        ProductItem(id: 29,
                    title: "Millet Grain Organic - Zero Waste (1kg)",
                    productImage: "milletGrain",
                    price:4.75,
                    category: "cereal"),
        ProductItem(id: 30,
                    title: "Millet Grain Organic - Zero Waste (500g)",
                    productImage: "milletGrain",
                    price:2.37,
                    category: "cereal"),
        ProductItem(id: 31,
                    title: "Muesli Deluxe Organic Zero Waste 1kg",
                    productImage: "Muesli Deluxe Organic Zero Waste 1kg",
                    price:7.25,
                    category: "cereal"),
        ProductItem(id: 32,
                    title: "Oatflakes Jumbo Organic 1kg",
                    productImage: "Oatflakes Jumbo Organic Zero Waste 1kg",
                    price:3.25,
                    category: "cereal"),
        ProductItem(id: 33,
                    title: "Oatflakes Jumbo Organic 500g",
                    productImage: "Oatflakes Jumbo Organic Zero Waste 1kg",
                    price:1.62,
                    category: "cereal"),
        ProductItem(id: 34,
                    title: "Oatflakes Standard Organic 1kg",
                    productImage: "Oatflakes Standard Organic Zero Waste 1kg",
                    price:3.25,
                    category: "cereal"),
        ProductItem(id: 35,
                    title: "Oatflakes Standard Organic 500g",
                    productImage: "Oatflakes Standard Organic Zero Waste 1kg",
                    price:1.62,
                    category: "cereal"),
        ProductItem(id: 36,
                    title: "Pinhead Oatmeal Organic Zero Waste 1kg",
                    productImage: "Pinhead Oatmeal Organic 1kg",
                    price:3.25,
                    category: "cereal"),
        ProductItem(id: 37,
                    title: "Pinhead Oatmeal Organic Zero Waste 500g",
                    productImage: "Pinhead Oatmeal Organic 1kg",
                    price:1.62,
                    category: "cereal"),
    ]
    @State var legumesProducts: [ProductItem] = [
        ProductItem(id: 38,
                    title: "Chickpeas Organic Zero Waste 1kg",
                    productImage: "Chickpeas Organic Zero Waste 1kg",
                    price:5.45,
                    category: "legumes"),
        ProductItem(id: 39,
                    title: "Chickpeas Organic Zero Waste 500g",
                    productImage: "Chickpeas Organic Zero Waste 1kg",
                    price:2.72,
                    category: "legumes"),
        ProductItem(id: 40,
                    title: "Lentil Verts (Puy) Organic Zero Waste 500g",
                    productImage: "Lentil Verts (Puy) Organic Zero Waste 500g",
                    price:3.97,
                    category: "legumes"),
        ProductItem(id: 45,
                    title: "Lentils Black Beluga Organic Zero Waste 500g",
                    productImage: "Lentils Black Beluga Organic Zero Waste 500g",
                    price:3.75,
                    category: "legumes"),
        ProductItem(id: 46,
                    title: "Lentils Brown Organic Zero Waste 1kg",
                    productImage: "Lentils Brown Organic Zero Waste 1kg",
                    price:5.75,
                    category: "legumes"),
        ProductItem(id: 47,
                    title: "Lentils Brown Organic Zero Waste 500g",
                    productImage: "Lentils Brown Organic Zero Waste 1kg",
                    price:2.87,
                    category: "legumes"),
        ProductItem(id: 48,
                    title: "Lentils Red Organic Zero Waste 1kg",
                    productImage: "Lentils Red Organic Zero Waste 1kg",
                    price:5.95,
                    category: "legumes"),
        ProductItem(id: 49,
                    title: "Lentils Red Organic Zero Waste 500g",
                    productImage: "Lentils Red Organic Zero Waste 1kg",
                    price:2.98,
                    category: "legumes"),
        ProductItem(id: 50,
                    title: "Lentils Red Organic Zero Waste 1kg",
                    productImage: "Lentils Red Organic Zero Waste 1kg",
                    price:5.95,
                    category: "legumes"),
        ProductItem(id: 51,
                    title: "Mung Beans Organic Zero Waste 1kg",
                    productImage: "Mung Beans Organic Zero Waste 1kg",
                    price:8.95,
                    category: "legumes"),
        ProductItem(id: 52,
                    title: "Mung Beans Organic Zero Waste 500g",
                    productImage: "Mung Beans Organic Zero Waste 1kg",
                    price:3.97,
                    category: "legumes"),
        ProductItem(id: 53,
                    title: "Mung Dhal - Zero Waste (1kg)",
                    productImage: "mungDhalSquare",
                    price:7.25,
                    category: "legumes"),
        ProductItem(id: 54,
                    title: "Mung Dhal - Zero Waste (500g)",
                    productImage: "mungDhalSquare",
                    price:3.63,
                    category: "legumes"),
        ProductItem(id: 55,
                    title: "Popcorn Organic Zero Waste 1kg",
                    productImage: "Popcorn Organic Zero Waste 1kg",
                    price:6.75,
                    category: "legumes"),
        ProductItem(id: 56,
                    title: "Popcorn Organic Zero Waste 500g",
                    productImage: "Popcorn Organic Zero Waste 1kg",
                    price:3.37,
                    category: "legumes")
    ]

    
    @State var miscProducts: [ProductItem] = [
        ProductItem(id: 57,
                    title: "Desicated Coconut Organic - Zero Waste (500g)",
                    productImage: "dessicatedCoconut",
                    price:5.00,
                    category: "misc"),
        ProductItem(id: 58,
                    title: "Dessicated Coconut Organic - Zero Waste (1kg)",
                    productImage: "dessicatedCoconut",
                    price:11.75,
                    category: "misc"),
        ProductItem(id: 59,
                    title: "Ekoplaza Organic Cotton Vegetable Bag (Large)",
                    productImage: "Ekoplaza Organic Cotton Vegetable Bag (Large)",
                    price:2.50,
                    category: "misc"),
        ProductItem(id: 60,
                    title: "Memo Organic Cotton Fruit and Vegetable Bag (2 pk)",
                    productImage: "Memo Organic Cotton Fruit and Vegetable Bag (2 pk)",
                    price:6.90,
                    category: "misc"),
        ProductItem(id: 61,
                    title: "Organic Cotton Bread Bag",
                    productImage: "Organic Cotton Bread Bag",
                    price:2.95,
                    category: "misc"),
        ProductItem(id: 62,
                    title: "Organic Vegan Dark Chocolate (200g)",
                    productImage: "Organic Vegan Dark Chocolate Drops (200g)",
                    price:4.77,
                    category: "misc"),
    ]
    @State var pastaProducts: [ProductItem] = [
        ProductItem(id: 63,
                    title: "Penne White Organic Zero Waste 1kg",
                    productImage: "Penne White Organic Zero Waste 1kg",
                    price:6.75,
                    category: "pasta"),
        ProductItem(id: 64,
                    title: "Penne White Organic Zero Waste 500g",
                    productImage: "Penne White Organic Zero Waste 1kg",
                    price:2.37,
                    category: "pasta"),
    ]

    @State var grainProducts: [ProductItem] = [
        ProductItem(id: 65,
                    title: "Rice Arborio Organic - (1kg)",
                    productImage: "riceArborio1024x1024",
                    price:6.95,
                    category: "grain"),
        ProductItem(id: 66,
                    title: "Rice Basmati Brown Organic - (1kg)",
                    productImage: "riceBrownBasmatic",
                    price:5.95,
                    category: "grain"),
        ProductItem(id: 67,
                    title: "Rice Basmati Brown Organic - (500g)",
                    productImage: "riceBrownBasmatic",
                    price:2.98,
                    category: "grain"),
        ProductItem(id: 68,
                    title: "Rice Flakes Brown Organic - (1kg)",
                    productImage: "riceBrownFlakes",
                    price:7.95,
                    category: "grain"),
        ProductItem(id: 69,
                    title: "Rice Flakes Brown Organic - (500g)",
                    productImage: "riceBrownFlakes",
                    price:3.97,
                    category: "grain"),
        ProductItem(id: 70,
                    title: "Rice Long Grain Brown Organic - Zero Waste (1kg)",
                    productImage: "riceBrownLongGrain",
                    price:5.45,
                    category: "grain"),
        ProductItem(id: 71,
                    title: "Rice Long Grain Brown Organic - Zero Waste (500g)",
                    productImage: "riceBrownLongGrain",
                    price:2.73,
                    category: "grain"),
        ProductItem(id: 72,
                    title: "Rice Short Grain Brown Organic - Zero Waste (1kg)",
                    productImage: "Rice Short Grain Brown Organic - Zero Waste (1kg)",
                    price:5.45,
                    category: "grain"),
        ProductItem(id: 73,
                    title: "Rice Short Grain Brown Organic - Zero Waste (500g)",
                    productImage: "Rice Short Grain Brown Organic - Zero Waste (1kg)",
                    price:2.72,
                    category: "grain"),
        ProductItem(id: 74,
                    title: "Rice White Basmati Organic - Zero Waste (1kg)",
                    productImage: "Basmati-rice",
                    price:7.45,
                    category: "grain"),
        ProductItem(id: 75,
                    title: "White Basmati Rice Organic - Zero Waste (500g)",
                    productImage: "Basmati-rice",
                    price:3.72,
                    category: "grain"),
        ProductItem(id: 76,
                    title: "Xylitol - Zero Waste (1kg)",
                    productImage: "xylitol",
                    price:16.50,
                    category: "grain"),
        ProductItem(id: 77,
                    title: "Xylitol - Zero Waste (500g)",
                    productImage: "xylitol",
                    price:8.25,
                    category: "grain"),
        ProductItem(id: 78,
                    title: "Couscous Wholemeal Organic Zero Waste 1kg",
                    productImage: "Couscous Wholemeal Organic Zero Waste 1kg",
                    price:4.85,
                    category: "grain"),
        ProductItem(id: 79,
                    title: "Couscous Wholemeal Organic Zero Waste 500g",
                    productImage: "Couscous Wholemeal Organic Zero Waste 1kg",
                    price:2.43,
                    category: "grain"),
    ]

    @State var productCategories: [ProductCategory] = [
        ProductCategory(id: 1,
                        title: "Nuts",
                        productCategoryImage: "Hazelnuts Organic - Zero Waste (1kg)",
                        products: []),
        ProductCategory(id: 2,
                        title: "Seeds",
                        productCategoryImage: "Pumpkin Seeds Organic - Zero Waste (1kg)",
                        products: []),
        ProductCategory(id: 3,
                        title: "Legumes",
                        productCategoryImage: "Lentils Red Organic Zero Waste 1kg",
                        products: []),
        ProductCategory(id: 4,
                        title: "Cereal",
                        productCategoryImage: "Oatflakes Jumbo Organic Zero Waste 1kg",
                        products: []),
        ProductCategory(id: 5,
                        title: "Pasta",
                        productCategoryImage: "Penne White Organic Zero Waste 1kg",
                        products: []),
        ProductCategory(id: 6,
                        title: "Misc",
                        productCategoryImage: "Organic Cotton Bread Bag",
                        products: []),
        ProductCategory(id: 7,
                        title: "Grains",
                        productCategoryImage: "Pinhead Oatmeal Organic 1kg",
                        products: [])
    ]

    init() {
        productCategories[0].products = nutsProducts
        productCategories[1].products = seedsProducts
        productCategories[2].products = legumesProducts
        productCategories[3].products = cerealProducts
        productCategories[4].products = pastaProducts
        productCategories[5].products = miscProducts
        productCategories[6].products = grainProducts
    }

    var body: some View {
        
        ScrollView {
            Spacer()
            Text("Product Categories")
                .font(Font.custom("Poppins-Light", size: 30))
                .multilineTextAlignment(.center)
            Spacer()
            Spacer()
            VStack {
                ForEach(productCategories, id: \.id) { productCategory in
                    NavigationLink(destination: ProductsView(productsToDisplay: productCategory.products)
                        .environmentObject(recipeItemObject)) {
                        HStack {
                            Image(productCategory.productCategoryImage)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 135)
                                .frame(height: 135)
                                .cornerRadius(20)
                            Spacer()
                            Text(productCategory.title)
                                .multilineTextAlignment(.leading)
                            .font(Font.custom("Poppins-Light", size: 26))
                        }
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.blue, lineWidth: 2)
                        )
                    } // navigationLink
                } // foreach
            } // VStack
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity)
    //            .background(.pink)
            .background(Color("SafeAreaBackgroundColor"))
            .clipped()
            .font(Font.custom("Poppins-Light", size: 20))
            
        } //scrollview
        .background(Color("SafeAreaBackgroundColor"))
    }
}

struct ProductCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCategoryView()
    }
}
