

import SwiftUI

enum Screen {
    case homePage
    case productsPage
    case recipePage
    case aboutUsPage
}


final class TabRouter: ObservableObject {
    @Published var screen: Screen = .homePage
    
    func change(to screen: Screen) {
        self.screen = screen
    }
}

struct MainView: View {
    @StateObject var router = TabRouter ()
    @StateObject var cartManager = CartManager()
    @StateObject var groomingItems = GroomingItems()
    @State var menuOpened: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                TabView(selection: $router.screen) {
                    HomePageView()
                        .tag(Screen.homePage)
                        .environmentObject(router)
                        .tabItem{
                            Label("Home", systemImage: "house")
                        }
                    ProductsView()
                        .tag(Screen.productsPage)
                        .environmentObject(router)
                        .environmentObject(groomingItems)
                        .environmentObject(cartManager)
                        .tabItem{
                            Label("Products", systemImage: "banknote")
                        }
                    OrganicRecipesView()
                        .tag(Screen.recipePage)
                        .environmentObject(router)
                        .tabItem{
                            Label("Organic Recipes", systemImage: "fork.knife")
                        }
                    AboutUsView()
                        .tag(Screen.aboutUsPage)
                        .environmentObject(router)
                        .tabItem{
                            Label("About Us", systemImage: "info.circle")
                        }
                } // TabView
                SideMenu(width: UIScreen.main.bounds.width/1.6, heightOffset: UIScreen.main.bounds.height/9, menuOpened: menuOpened, toggleMenu: toggleMenu)
            } // ZStack
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarLeading) {
                    Button(action: {
                        toggleMenu()
//                        self.menuOpened.toggle()
                    }, label: {
                        ZStack(alignment: .topLeading) {
                            Image(systemName: "plus.circle")
                                .padding(.top, 5)
                        }
                    })
                } // toolbaritemgroup
                ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarTrailing) {
                    NavigationLink {
                        CartView()
                            .environmentObject(cartManager)
                            .environmentObject(groomingItems)
                    } label: {
                        CartButton(numberOfGroomingItems: groomingItems.cartContents.count)
                    }
                }
            } // toolbar
        } // nav view
    } // var body

    func toggleMenu() {
        print (UIScreen.main.bounds.width/1.6)
        print (UIScreen.main.bounds.height)
        menuOpened.toggle()
    }
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
