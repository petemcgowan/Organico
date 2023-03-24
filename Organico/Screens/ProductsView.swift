

import SwiftUI


struct ProductsView: View {
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var groomingItems : GroomingItems
    @EnvironmentObject var recipeItemObject : RecipeItems

    //    @State var menuOpened = false
    var productsToDisplay: [ProductItem] = []
    
    var columnGrid : [GridItem] = [GridItem(.flexible()),
                                   GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            Spacer()
            Text("Products")
                .font(Font.custom("Poppins-Light", size: 30))
                .multilineTextAlignment(.center)
            Spacer()
            Spacer()

            LazyVGrid (columns: columnGrid) {
                ForEach(productsToDisplay, id: \.id) { groom in
                    VStack{
                        NavigationLink(destination: ProductsDetailView(groomingOfArray: groom)
                            .environmentObject(recipeItemObject)
                                        .toolbarBackground(
                                            Color("headerBackgroundColor"), for: .navigationBar, .tabBar)
                                        .toolbarBackground(.visible, for: .navigationBar)
                        ) {
                            VStack {
                                Image(groom.productImage)
                                    .resizable()
                                    .scaledToFill()
                                Text(groom.title)
                                    .background(Color("SafeAreaBackgroundColor"))
//                                    .foregroundColor(Color("fontColor"))
//                                Text(groom.price.asCurrencyWith2Decimals())
                                    .background(Color("SafeAreaBackgroundColor"))
//                                    .foregroundColor(Color("fontColor"))
                                    .font(Font.headline.weight(.light))
                            }
                        }
//                        Button(action: {
//                            let groomingItem = GroomingItem(id: groom.id, title: groom.title, productImage: groom.productImage, price: groom.price)
//                            groomingItems.cartContents.append(groomingItem)
//                            cartManager.total += groomingItem.price
//                        }, label: {
//                            Label("", systemImage: "cart.badge.plus" )
//                                .foregroundColor(Color("fontColor"))
//                        })
                    } // vstack
                } // foreach
            } // lazyvgrid
        } //scrollview
        .font(Font.custom("Poppins-Light", size: 16))
        .foregroundColor(Color("fontColor"))
        .background(Color("SafeAreaBackgroundColor"))
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
            .environmentObject(CartManager ())
    }
}
