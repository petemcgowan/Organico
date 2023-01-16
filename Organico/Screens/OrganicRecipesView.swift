

import SwiftUI

struct OrganicRecipesView: View {
    
    @State private var showWebView = false
    @State var recipes: [RecipeItem] = [
        RecipeItem(id: 1,
                   title: "Chunky Autumn Vegetable and Haricot Bean Soup",
                   localHtml: "1-SpringSeaweedSalad",
                   recipe: "https://www.organico.ie/news/2016/10/18/chunky-autumn-vegetable-and-haricot-bean-soup/",
                   recipeImage: "1-SpringSeaweedSalad",
                   recipeOriginalImage: "https://www.organico.ie/wp/wp-content/uploads/2016/10/winter-veg-blog.jpg"),
        RecipeItem(id: 2,
                   title: "Spring Seaweed Salad",
                   localHtml: "2-ChunkyAutumnVegetable",
                   recipe: "https://www.organico.ie/news/2014/05/02/spring-seaweed-salad/",
                   recipeImage: "2-ChunkyAutumnVegetable",
                   recipeOriginalImage: "https://www.organico.ie/wp/wp-content/uploads/2014/05/seweed-salad-300x224.jpg"),
        RecipeItem(id: 3,
                   title: "Rachel's French Dressing",
                   localHtml: "3-RachelsFrenchDressing",
                   recipe: "https://www.organico.ie/news/2016/04/06/rachels-french-dressing/",
                   recipeImage: "3-RachelsFrenchDressing",
                   recipeOriginalImage: "http://www.organico.ie/wp/wp-content/uploads/2016/04/French-Dressing-blog.jpg"),
        RecipeItem(id: 4,
                   title: "Salad Days Are Coming!",
                   localHtml: "4-SaladDaysAreComing",
                   recipe: "https://www.organico.ie/news/2016/04/06/salad-days-are-coming/",
                   recipeImage: "4-SaladDaysAreComing" ,
                   recipeOriginalImage: "http://www.organico.ie/wp/wp-content/uploads/2016/04/salad-and-tomatoes-blog.jpg" ),
        RecipeItem(id: 5,
                   title: "Spring Greens Pesto Recipes by Rachel Dare",
                   localHtml: "5-SpringGreensPestoRecipes",
                   recipe: "https://www.organico.ie/news/2015/02/26/spring-greens-pesto-recipes-by-rachel-dare/",
                   recipeImage: "5-SpringGreensPestoRecipes",
                   recipeOriginalImage: "https://www.organico.ie/media/wordpress/02ce5277d431b5af1ba4181c393ad30b.jpg" ),
        RecipeItem(id: 6,
                   title: "Fresh Juice Recipes",
                   localHtml: "6-FreshJuiceRecipes",
                   recipe: "https://www.organico.ie/news/2013/08/01/fresh-juice-recipes/",
                   recipeImage: "6-FreshJuiceRecipes" ,
                   recipeOriginalImage: "http://www.organico.ie/wp/wp-content/uploads/2013/08/juicing-211x300.jpg" )
    ]
    
    var body: some View {
        ScrollView {
            
            //            Image("https://www.organico.ie/media/wordpress/02ce5277d431b5af1ba4181c393ad30b.jpg")
            //                .resizable()
            //                .aspectRatio(contentMode: .fit)
            //                .frame(width: 50)
            //                .cornerRadius(10)
            VStack {
                ForEach(recipes, id: \.id) { recipe in
                    NavigationLink(destination: RecipeDetailView(pageToShow: recipe.localHtml)) {
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
                } // foreach
            } //vstack
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity)
//            .background(.pink)
            .background(Color("SafeAreaBackgroundColor"))
            .clipped()
            .font(Font.custom("Nobile-Regular", size: 20))
            
        } //scrollview
    }
}

struct OrganicRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        OrganicRecipesView()
            .environmentObject(TabRouter())
    }
}
