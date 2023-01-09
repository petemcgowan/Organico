

import SwiftUI

struct OrganicRecipesView: View {
    
    @State private var showWebView = false
    @State var recipes: [RecipeItem] = [
        RecipeItem(id: 1,
                   title: "Chunky Autumn Vegetable and Haricot Bean Soup",
                   recipe: "https://www.organico.ie/news/2016/10/18/chunky-autumn-vegetable-and-haricot-bean-soup/",
                   recipeImage: "https://www.organico.ie/wp/wp-content/uploads/2016/10/winter-veg-blog.jpg"),
        RecipeItem(id: 1,
                   title: "Spring Seaweed Salad",
                   recipe: "https://www.organico.ie/news/2014/05/02/spring-seaweed-salad/",
                   recipeImage: "recipeImage" ),
        RecipeItem(id: 1,
                   title: "Rachel's French Dressing",
                   recipe: "https://www.organico.ie/news/2016/04/06/rachels-french-dressing/",
                   recipeImage: "http://www.organico.ie/wp/wp-content/uploads/2016/04/French-Dressing-blog.jpg"),
        RecipeItem(id: 4,
                   title: "Salad Days Are Coming!",
                   recipe: "https://www.organico.ie/news/2016/04/06/salad-days-are-coming/",
                   recipeImage: "recipeImage" ),
        RecipeItem(id: 5,
                   title: "Spring Greens Pesto Recipes by Rachel Dare",
                   recipe: "https://www.organico.ie/news/2015/02/26/spring-greens-pesto-recipes-by-rachel-dare/",
                   recipeImage: "https://www.organico.ie/media/wordpress/02ce5277d431b5af1ba4181c393ad30b.jpg" ),
        RecipeItem(id: 6,
                   title: "Fresh Juice Recipes",
                   recipe: "https://www.organico.ie/news/2013/08/01/fresh-juice-recipes/",
                   recipeImage: "recipeImage" )
    ]
    
    var body: some View {
        VStack {
            ForEach(recipes, id: \.id) { recipe in
                    NavigationLink(destination: RecipeDetailView(pageToShow: recipe.recipe)) {
                        Text(recipe.title)
                    }
            } // foreach
        }
        .frame(maxWidth: .infinity,
               maxHeight: .infinity)
        .background(.pink)
        .clipped()
    }
}

struct OrganicRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        OrganicRecipesView()
            .environmentObject(TabRouter())
    }
}
