//
//  MyRecipesView.swift
//  Organico
//
//  Created by Peter McGowan on 20/03/2023.
//

import SwiftUI
import Foundation

struct MyRecipesView: View {
    
    var columnGrid : [GridItem] = [GridItem(.fixed(200)),
                                   GridItem(.flexible())]
    @EnvironmentObject var router: TabRouter
    @EnvironmentObject var recipeItemObject : RecipeItems
//    let recipeIds: [Int] = [1, 2, 3]
    
    var body: some View {
        // Pull recipes from the overall recipe array (Environment from Mainview)

        ScrollView {
            
            Spacer()
            HStack {
                Spacer()
                Text("My Recipes")
                    .font(Font.custom("Poppins-Light", size: 30))
                    .multilineTextAlignment(.center)
                Spacer()
            }
            Spacer()
            Spacer()

//            LazyVGrid (columns: columnGrid) {
                ForEach(recipeItemObject.recipes, id: \.id) { recipe in
                    if (recipe.saved){
                        NavigationLink(destination: RecipesDetailView(pageToShow: recipe.localHtml, recipeToShow: recipe)
                            .environmentObject(recipeItemObject)
                            .background(Color("SafeAreaBackgroundColor"))
                                        .toolbarBackground(
                                            Color("headerBackgroundColor"), for: .navigationBar, .tabBar)
                                        .toolbarBackground(.visible, for: .navigationBar)
                        ) {
                            HStack {
                                Image(recipe.recipeImage)
                                    .resizable()
//                                    .scaledToFill()
                                    .cornerRadius(20)
                                    .padding(5)
                                    .frame(width:205, height:205)
                                Text(recipe.title)
                                    .font(Font.custom("Poppins-Light", size: 22))
                                Spacer()
                            }
//                            VStack {
//                                Image(recipe.recipeImage)
//                                    .resizable()
//                                    .scaledToFill()
//                                    .cornerRadius(20)
//                                    .padding(10)
////                                Text(recipe.title)
//                            }
//                            VStack {
////                                Image(recipe.recipeImage)
////                                    .resizable()
////                                    .scaledToFill()
////                                    .cornerRadius(20)
////                                    .padding(10)
//                                Text(recipe.title)
//                            }
                        } // navigation link
                    } // if
                } // foreach
//            } // lazy vgrid
            if (!recipeItemObject.hasMyRecipes) {
                Spacer()
                Spacer()
                Spacer()
                VStack {
                    Button(action: {
                        router.change(to: .recipesPage)
                        // the router action
                    }, label: {
//                        Text ("Recipes")
//                            .font(Font.custom("Poppins-Light", size: 24))
//                        Spacer()
                        Text("Keep track of your favourite recipes by adding them from the recipes page!")
                            .font(Font.custom("Poppins-Light", size: 20))
                        Spacer()
                        Spacer()
                        Text ("Add Now »")
                            .font(Font.custom("Poppins-Light", size: 20))
                        Spacer()
                    })
                }
                .background(Color("newsletterBoxBackground"))
                .foregroundColor(Color("fontColor"))

            }
        } // ScrollView
        .frame(maxWidth: .infinity,
               maxHeight: .infinity)
        //            .background(.pink)
        .background(Color("SafeAreaBackgroundColor"))
        .clipped()
        .font(Font.custom("Poppins-Light", size: 20))
    }
}
 
struct MyRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        MyRecipesView()
    }
}
