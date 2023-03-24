

import SwiftUI

struct RecipeHeader: View {
    @State var recipeToShow: RecipeItem
    @State var isSaved : Bool
    @EnvironmentObject var recipeItemObject : RecipeItems
    
//    init(recipeToShow: RecipeItem, isSaved: Bool) {
//        print("ReceipeDetailView init called")
//        self.recipeToShow = recipeToShow
//        self.isSaved = recipeToShow.saved
//    }
    
    var body: some View {
        VStack {
            Image(recipeToShow.recipeImage)
            .resizable()
            .aspectRatio(contentMode: .fill)
            HStack {
                Spacer()
                Text(recipeToShow.title)
                    .font(Font.custom("Poppins-Light", size: 34))
                Spacer()
                Button(action: {
                    print("RecipeHeader:recipeToShow:", recipeToShow)
                    // save the current recipe id, recipeToShow.id to the array
                    if (recipeToShow.saved) {
                        print ("set Bookmark to false")
                        isSaved = false
                        recipeToShow.saved = false
                    }
                    else {
                        print ("set Bookmark to true")
                        recipeToShow.saved = true
                        isSaved = true
                    }
                    let userDefaults = UserDefaults.standard

                    var recipeIDDefaultsArray: [Int] = userDefaults.object(forKey: "myRecipesKey") as? [Int] ?? []
                    print ("RecipeHeader:recipeIDDefaultsArray:BEFORE:", recipeIDDefaultsArray)

                    // check the array for existance of recipeToShow.recipeID
                    var isInTheArray: Bool  = false
                    for recipeIdDefault in recipeIDDefaultsArray {
                        if (recipeIdDefault == recipeToShow.id) {
                            // it's in the stored array
                            print("it's in the stored array, setting isInTheArray true ",  recipeIdDefault)
                            isInTheArray = true
                            break;
                        }
                    }
                    if (recipeToShow.saved) { // add it to the array if they've toggled it so
                        if (!isInTheArray) {
                            print("NOT in the array, append in the stored array",  recipeToShow.id)
                            recipeIDDefaultsArray.append(recipeToShow.id)
                        }
                    } else {
                        // remove from the array
                        if (isInTheArray) {
                            if let index = recipeIDDefaultsArray.firstIndex(of: recipeToShow.id) {
                                print("IS in the array, REMOVE in the stored array",  recipeToShow.id)
                                recipeIDDefaultsArray.remove(at: index)
                            }
                        }
                    }
                    
                    if (recipeIDDefaultsArray.isEmpty) {
                        recipeItemObject.hasMyRecipes = false
                    }
                    else {
                        recipeItemObject.hasMyRecipes = true
                    }
                    
                    userDefaults.set(recipeIDDefaultsArray, forKey: "myRecipesKey")
                    print ("RecipeHeader:recipeIDDefaultsArray:AFTER:", recipeIDDefaultsArray)
                }, label: {
                    // bookmark.fill if recipeToShow is saved
                    Image (systemName: isSaved == true ? "bookmark.fill" : "bookmark")
                        .foregroundColor(Color("altFontColor"))
                })
                Spacer()
            }
            .font(Font.custom("Poppins-Light", size: 30))
            .foregroundColor(Color("fontColor"))
            Spacer()
            HStack {
                Text("By")
                Text(recipeToShow.author)
                    .foregroundColor(Color("authorFontColor"))
                Spacer()
            }
            Spacer()
            Spacer()
            HStack {
                Spacer()
                Text(recipeToShow.recipeDescription)
                    .multilineTextAlignment(.center)
                Spacer()
            }
            Spacer()

        } // vstack
        .font(Font.custom("Poppins-Light", size: 20))
        .foregroundColor(Color("fontColor"))
        .navigationTitle("Recipe")

    }
}

struct RecipeInfo: View {
    var recipeToShow: RecipeItem
    
    var body: some View {
        VStack {
            Group {
                Spacer()
                HStack {
                    Spacer()
                    Text("Info")
                        .foregroundColor(Color("altFontColor"))
                        .font(Font.custom("Poppins-Light", size: 30))
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                Spacer()
                HStack {
                    Label ("Healthy", systemImage: "heart.fill")
                        .foregroundColor(Color("altFontColor"))
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                Spacer()
                HStack {
                    Label ("Preparation time ", systemImage: "clock")
                        .foregroundColor(Color("altFontColor"))
                        .multilineTextAlignment(.trailing)
                    Text(String(recipeToShow.preparationTime))
                    Spacer()
                }
                if (recipeToShow.cookingTime > 0) {
                    Spacer()
                    HStack {
                        Label ("Cooking time ", systemImage: "clock.fill")
                            .foregroundColor(Color("altFontColor"))
                        Text(String(recipeToShow.cookingTime))
                        Spacer()
                    }
                } // if
            } // group
            Group {
                Spacer()
                HStack {
                    Label("Serves ", systemImage: "fork.knife" )
                        .foregroundColor(Color("altFontColor"))
                    Text(String(recipeToShow.numServes))
                    Spacer()
                }
                Spacer()
                // var vegetarian: Bool
                if (recipeToShow.easy) {
                    HStack {
                        Label("Vegetarian ", systemImage: "v.square.fill" )
                            .foregroundColor(Color("altFontColor"))
                        Spacer()
                    }
                    Spacer()
                }
                // var freezable: Bool
                if (recipeToShow.freezable) {
                    HStack {
                        Label("Freezable ", systemImage: "timelapse" )
                            .foregroundColor(Color("altFontColor"))
                        Spacer()
                    }
                    Spacer()
                }
                // var easy: Bool
                if (recipeToShow.easy) {
                    HStack {
                        Label("Easy ", systemImage: "frying.pan" )
                            .foregroundColor(Color("altFontColor"))
                        Spacer()
                    }
                    Spacer()
                }
                Spacer()
            }
        } // vstack
        .font(Font.custom("Poppins-Light", size: 20))
        .foregroundColor(Color("fontColor"))
    }
}

struct RecipeMethod: View {
    var recipeToShow: RecipeItem
    
    var body: some View {
        VStack {
            Spacer()
            Text ("Method")
                .font(Font.custom("Poppins-Light", size: 30))
                .foregroundColor(Color("altFontColor"))
            ForEach(recipeToShow.method.indices, id: \.self) { i in
                HStack {
                    Text("STEP")
                    Text (String(i))
                    Spacer()
                }
                .bold()
                HStack{
                    Text("\(self.recipeToShow.method[i])")
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                Spacer()
                Spacer()
            }
        }
        .font(Font.custom("Poppins-Light", size: 20))
        .foregroundColor(Color("fontColor"))
        .frame(maxWidth: .infinity, alignment: .leading)
        Spacer()
        Spacer()
    }
}

struct RecipeNutritionalPanel: View {
    var recipeToShow: RecipeItem
    let columns = [GridItem(.flexible()), GridItem(.flexible()),
                   GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
        
        Text ("Nutrition: Per Serving")
            .font(Font.custom("Poppins-Light", size: 30))
            .foregroundColor(Color("altFontColor"))
            .frame(maxWidth: .infinity, alignment: .leading)
        LazyVGrid(columns: columns) {
            VStack{
                Text("kcal")
                    .bold()
                Text(String(recipeToShow.nutritionData.kcal))
            }
            VStack{
                Text("Fat")
                    .bold()
                Text(String(recipeToShow.nutritionData.fat))
            }
            VStack{
                Text("Saturates")
                    .bold()
                Text(String(recipeToShow.nutritionData.saturates))
            }
            VStack{
                Text("Carbs")
                    .bold()
                Text(String(recipeToShow.nutritionData.carbs))
            }
        }
        .font(Font.custom("Poppins-Light", size: 18))
        .foregroundColor(Color("fontColor"))
        .background(Color("greyNutritionBackground"))
        LazyVGrid(columns: columns) {
            VStack{
                Text("Sugars")
                    .bold()
                Text(String(recipeToShow.nutritionData.sugars))
            }
            VStack{
                Text("Fibre")
                    .bold()
                Text(String(recipeToShow.nutritionData.fibre))
            }
            VStack{
                Text("Protein")
                    .bold()
                Text(String(recipeToShow.nutritionData.protein))
            }
            VStack{
                Text("Salt")
                    .bold()
                Text(String(recipeToShow.nutritionData.salt))
            }
        }
        .background(Color("greyNutritionBackground"))
        .font(Font.custom("Poppins-Light", size: 18))
        .foregroundColor(Color("fontColor"))
    }
}

struct RecipeIngredients: View {
    var recipeToShow: RecipeItem
    
    var body: some View {
        VStack {
            Text ("Ingredients")
                .font(Font.custom("Poppins-Light", size: 30))
                .foregroundColor(Color("altFontColor"))
                .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
            ForEach(recipeToShow.ingredients.indices, id: \.self) { i in
                HStack {
                    Label ("", systemImage: "dot.circle")
                    Text("\(self.recipeToShow.ingredients[i])")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                Spacer()
            }
        }
        .font(Font.custom("Poppins-Light", size: 20))
        .foregroundColor(Color("fontColor"))
    }
}


struct RecipesDetailView: View {
    var pageToShow = ""
    var recipeToShow: RecipeItem
    @EnvironmentObject var recipeItemObject : RecipeItems
    
    var body: some View {
        ScrollView{

            RecipeHeader(recipeToShow: recipeToShow, isSaved: recipeToShow.saved)
                .environmentObject(recipeItemObject)
            RecipeInfo(recipeToShow: recipeToShow)
            RecipeMethod(recipeToShow: recipeToShow)
            RecipeNutritionalPanel(recipeToShow: recipeToShow)
            RecipeIngredients(recipeToShow: recipeToShow)
                .frame(maxWidth: .infinity, alignment: .leading)
        } // ScrollView
    }
}
    
