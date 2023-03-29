

import SwiftUI

enum Screen {
    case homePage
    case recipesPage
    case productsPage
    case myRecipesPage
    case aboutUsPage
}


final class TabRouter: ObservableObject {
    @Published var screen: Screen = .homePage
    
    func change(to screen: Screen) {
        self.screen = screen
    }
}

//class MenuOpened: ObservableObject {
//    @Published var menuOpened: Bool = false
//}

struct MainView: View {
    @StateObject var router = TabRouter ()
    @StateObject var cartManager = CartManager()
    @StateObject var groomingItems = GroomingItems()
//    @State var menuOpened: Bool = false
//    @StateObject var menuOpenedEnv = MenuOpened()
    @StateObject var recipeItemObject = RecipeItems()
    
    var body: some View {
        NavigationStack {
            ZStack {
                TabView(selection: $router.screen) {
                    HomePageView()
                         .tag(Screen.homePage)
                        .environmentObject(router)
                        .tabItem{
                            Label("Home", systemImage: "house")
                        }
                        .navigationBarTitleDisplayMode(.inline)                        .foregroundColor(Color("fontColor"))
                        .toolbarBackground(
                            Color("headerBackgroundColor"), for: .navigationBar, .tabBar)
                        .toolbarBackground(.visible, for: .navigationBar)
                    
                    RecipesView()
                        .tag(Screen.recipesPage)
                        .environmentObject(recipeItemObject)
                        .tabItem{
                            Label("Organic Recipes", systemImage: "fork.knife")
                        }
                        .foregroundColor(Color("fontColor"))
                        .toolbarBackground(
                            Color("headerBackgroundColor"), for: .navigationBar, .tabBar)
                        .toolbarBackground(.visible, for: .navigationBar)

                    ProductCategoryView()
                        .tag(Screen.productsPage)
                        .environmentObject(recipeItemObject)
                        .tabItem{
                            Label("Products", systemImage: "banknote")
                        }
                        .foregroundColor(Color("fontColor"))
                        .toolbarBackground(
                            Color("headerBackgroundColor"), for: .navigationBar, .tabBar)
                        .toolbarBackground(.visible, for: .navigationBar)
                    
                    MyRecipesView()
                        .tag(Screen.myRecipesPage)
                        .environmentObject(router)
                        .environmentObject(recipeItemObject)
                        .tabItem{
                            Label("My Recipes", systemImage: "frying.pan")
                        }
                        .foregroundColor(Color("fontColor"))
                        .toolbarBackground(
                            Color("headerBackgroundColor"), for: .navigationBar, .tabBar)
                        .toolbarBackground(.visible, for: .navigationBar)
                    
//                    AboutUsView()
//                        .tag(Screen.aboutUsPage)
//                        .tabItem{
//                            Label("About Us", systemImage: "info.circle")
//                        }
//                        .foregroundColor(Color("fontColor"))
//                        .toolbarBackground(
//                            Color("headerBackgroundColor"), for: .navigationBar, .tabBar)
//                        .toolbarBackground(.visible, for: .navigationBar)
                } // ZStack
            } // TabView
            .navigationBarTitleDisplayMode(.inline)
            .opacity(1.0)
            .toolbar {
                ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarTrailing) {
                    NavigationLink {
                        NewsletterView()
                        //                            .environmentObject(menuOpenedEnv)
                    } label: {
                        ZStack(alignment: .topLeading) {
                            Image(systemName: "newspaper")
                                .padding(.top, 5)
                                .foregroundColor(Color("fontColor"))
                        }
                    }
                }
                ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarTrailing) {
                    NavigationLink {
                        AboutUsView()
//                            .environmentObject(cartManager)
                            .environmentObject(groomingItems)
                    } label: {
//                        CartButton(numberOfGroomingItems: groomingItems.cartContents.count)
                        ZStack(alignment: .topLeading) {
                            Image(systemName: "info.circle")
                                .padding(.top, 5)
                                .foregroundColor(Color("fontColor"))
                        }
                    }
                }
                ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarLeading) {
                    NavigationLink {
                        ShippingView()
                        //                            .environmentObject(menuOpenedEnv)
                    } label: {
                        ZStack(alignment: .topLeading) {
                            Image(systemName: "car.circle")
                                .padding(.top, 5)
                                .foregroundColor(Color("fontColor"))
                        }
                    }
                }
                ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarLeading) {
                    NavigationLink {
                        ContactUsView()
                        //                            .environmentObject(menuOpenedEnv)
                    } label: {
                        ZStack(alignment: .topLeading) {
                            Image(systemName: "phone")
                                .padding(.top, 5)
                                .foregroundColor(Color("fontColor"))
                        }
                    }
//                    .toolbarBackground(.red, in: .navigationBar)
                }
            } // toolbar
            .opacity(1.0)
//            .background(Color("headerBackgroundColor"))
            
        } // nav view
//        .background(Color("headerBackgroundColor"))
//        .opacity(1.0)
    } // var body

    
    
//    func toggleMenu() {
//        menuOpenedEnv.menuOpened.toggle()
//    }
}

//                SideMenu(width: UIScreen.main.bounds.width/1.6, heightOffset: UIScreen.main.bounds.height/9, menuOpened: menuOpened, toggleMenu: toggleMenu, isShowing: $menuOpened)
//                    .environmentObject(router)
//                SideMenu(width: UIScreen.main.bounds.width/1.6, heightOffset: UIScreen.main.bounds.height/9, menuOpened: menuOpenedEnv.menuOpened, toggleMenu: toggleMenu)
//                    .environmentObject(router)
//                    .environmentObject(menuOpenedEnv)
//            .edgesIgnoringSafeArea(.all)
