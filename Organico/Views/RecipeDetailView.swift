

import SwiftUI

struct RecipeDetailView: View {
    var pageToShow = ""
    
    var body: some View {
//        WebView(url: URL(string: pageToShow)!)
//        WebView(htmlFileName: "SpringSeaweedSalad")
        WebView(htmlFileName: pageToShow)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView()
    }
}
