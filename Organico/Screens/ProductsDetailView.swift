
import SwiftUI

struct ProductsDetailView: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var recipeItemObject : RecipeItems

//    @EnvironmentObject var groomingItems : GroomingItems
    var groomingOfArray: ProductItem

    var body: some View {
        ScrollView {
            VStack(spacing: 20.0) {
                Image(groomingOfArray.productImage)
                    .resizable()
                    .scaledToFill()
                Text(groomingOfArray.title)   // todo: this is a placeholder, bring in the other elements so I can use a "sub-title" here
                Text(groomingOfArray.price.asCurrencyWith2Decimals())
                
                ForEach(recipeItemObject.recipes, id: \.id) { recipe in
                    //                if (recipeIdDefault == recipe.id) {
                    ForEach (recipe.associatedProductIds, id: \.self) { productID in
                        if (groomingOfArray.id == productID) {
                            NavigationLink(destination: RecipesDetailView(pageToShow: recipe.localHtml, recipeToShow: recipe)
                            .environmentObject(recipeItemObject)
                            .background(Color("SafeAreaBackgroundColor"))) {
                                HStack {
                                    Text(recipe.title)
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                    Image(recipe.recipeImage)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 100)
                                        .frame(height: 100)
                                        .cornerRadius(20)
                                }
                                .padding()
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(.blue, lineWidth: 2)
                                )
                            }
                        }
                    } //foreach
                    //            }
                } // foreach

                //            Button(action: {
    //                print("Add To Cart in Grooming detail has been clicked")
    //
    //             }, label: {
    //                 Text("Add To Cart")
    //             })
            }
        } // scrollView
        .navigationTitle("Product Detail")
        .background(Color("SafeAreaBackgroundColor"))
        .foregroundColor(Color("fontColor"))
        .font(Font.custom("Poppins-Light", size: 20))
    }
}

struct ProductsDetailView_Previews: PreviewProvider {
    static let groomingOfArrayPreview = ProductItem(id: 1,
                     title: "A.Vogel Neem Shampoo (200ml)",
                     productImage: "A_Vogel_Neem_Shampoo_200ml",
                     price: 9.99,
                    category: "misc")

    static var previews: some View {
//        NavigationView {
        ProductsDetailView(groomingOfArray: groomingOfArrayPreview)
                .environmentObject(CartManager())
//        }
    }
}
