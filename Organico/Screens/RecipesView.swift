

import SwiftUI

struct RecipesView: View {
    
    @EnvironmentObject var recipeItemObject : RecipeItems
     
    @State private var showWebView = false
    
    var body: some View {
        ScrollView {
            
            VStack {
                Spacer()
                Text("Organic Recipes")
                    .font(Font.custom("Poppins-Light", size: 30))
                    .multilineTextAlignment(.center)
                Spacer()
                Spacer()
                ForEach(recipeItemObject.recipes, id: \.id) { recipe in
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
                                .frame(width: 200, height: 200)
                                .cornerRadius(20)
                        }
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.blue, lineWidth: 2)
                        )
                    }
                } // foreach
            } //vstack
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

struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView()
            .environmentObject(TabRouter())
    }
}
