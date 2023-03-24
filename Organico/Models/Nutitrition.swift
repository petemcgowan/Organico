

import SwiftUI

class Nutrition : Identifiable, Codable {

    var kcal: Int
    var fat: Double
    var saturates: Double
    var carbs: Double
    var sugars: Double
    var fibre: Double
    var protein: Double
    var salt: Double

    
    init(kcal: Int,
         fat: Double,
         saturates: Double,
         carbs: Double,
         sugars: Double,
         fibre: Double,
         protein: Double,
         salt: Double) {
        self.kcal = kcal
        self.fat = fat
        self.saturates = saturates
        self.carbs = carbs
        self.sugars = sugars
        self.fibre = fibre
        self.protein = protein
        self.salt = salt
    }
}

class NutritionItems: ObservableObject {
    @Published var nutritionObjects: [Nutrition]

    init () {
        nutritionObjects = []
        print("NutritionItems init")
    }
}
