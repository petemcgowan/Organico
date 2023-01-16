

import SwiftUI

class RecipeItem : Identifiable, Codable {
    var id: Int
    var title: String
    var localHtml: String
    var recipe: String
    var recipeImage: String
    var recipeOriginalImage: String

    init(id: Int, title: String, localHtml: String, recipe: String, recipeImage: String, recipeOriginalImage: String) {
        self.id = id
        self.title = title
        self.localHtml = localHtml
        self.recipe = recipe
        self.recipeImage = recipeImage
        self.recipeOriginalImage = recipeOriginalImage
    }
}

class RecipeItems: ObservableObject {
    @Published var recipes: [RecipeItem]

    init () {
        recipes = []
        print("RecipeItem init")
    }
}
