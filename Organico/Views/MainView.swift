

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

class MenuOpened: ObservableObject {
    @Published var menuOpened: Bool = false
}

struct MainView: View {
    @StateObject var router = TabRouter ()
    @StateObject var cartManager = CartManager()
    @StateObject var groomingItems = GroomingItems()
//    @State var menuOpened: Bool = false
    @StateObject var menuOpenedEnv = MenuOpened()

    
    var body: some View {
        NavigationView {
            ZStack {
                TabView(selection: $router.screen) {
                    HomePageView()
                        .tag(Screen.homePage)
                        .environmentObject(menuOpenedEnv)
                        .environmentObject(router)
                        .tabItem{
                            Label("Home", systemImage: "house")
                        }
                        .background(Color("SafeAreaBackgroundColor"))
                        .foregroundColor(Color("fontColor"))
                    ProductsView()
                        .tag(Screen.productsPage)
                        .environmentObject(menuOpenedEnv)
                        .environmentObject(router)
                        .environmentObject(groomingItems)
                        .environmentObject(cartManager)
                        .tabItem{
                            Label("Products", systemImage: "banknote")
                        }
                        .background(Color("SafeAreaBackgroundColor"))
                        .foregroundColor(Color("fontColor"))
                    OrganicRecipesView()
                        .tag(Screen.recipePage)
                        .environmentObject(menuOpenedEnv)
                        .environmentObject(router)
                        .tabItem{
                            Label("Organic Recipes", systemImage: "fork.knife")
                        }
                        .background(Color("SafeAreaBackgroundColor"))
                        .foregroundColor(Color("fontColor"))
                    AboutUsView()
                        .tag(Screen.aboutUsPage)
                        .environmentObject(menuOpenedEnv)
                        .environmentObject(router)
                        .tabItem{
                            Label("About Us", systemImage: "info.circle")
                        }
                        .background(Color("SafeAreaBackgroundColor"))
                        .foregroundColor(Color("fontColor"))
                } // TabView
//                SideMenu(width: UIScreen.main.bounds.width/1.6, heightOffset: UIScreen.main.bounds.height/9, menuOpened: menuOpened, toggleMenu: toggleMenu, isShowing: $menuOpened)
//                    .environmentObject(router)
//                SideMenu(width: UIScreen.main.bounds.width/1.6, heightOffset: UIScreen.main.bounds.height/9, menuOpened: menuOpenedEnv.menuOpened, toggleMenu: toggleMenu)
//                    .environmentObject(router)
//                    .environmentObject(menuOpenedEnv)
            } // ZStack
//            .edgesIgnoringSafeArea(.all)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
//                ToolbarItemGroup(placement: ToolbarItemPlacement.principal) {
//                    Button(action: {
//                        toggleMenu()
////                        self.menuOpened.toggle()
//                    }, label: {
//                        ZStack(alignment: .topLeading) {
//                            Image(systemName: "list.bullet")
//                                .padding(.top, 5)
//                                .foregroundColor(.black)
//                        }
//                    })
//                } // toolbaritemgroup
                ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarTrailing) {
                    NavigationLink {
                        NewsletterView()
                            .environmentObject(menuOpenedEnv)
                    } label: {
                        ZStack(alignment: .topLeading) {
                            Image(systemName: "newspaper")
                                .padding(.top, 5)
                                .foregroundColor(.black)
                        }
                    }
                }
                ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarTrailing) {
                    NavigationLink {
                        CartView()
                            .environmentObject(cartManager)
                            .environmentObject(groomingItems)
                    } label: {
                        CartButton(numberOfGroomingItems: groomingItems.cartContents.count)
                    }
                }
                ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarLeading) {
                    NavigationLink {
                        ShippingView()
                            .environmentObject(menuOpenedEnv)
                    } label: {
                        ZStack(alignment: .topLeading) {
                            Image(systemName: "car.circle")
                                .padding(.top, 5)
                                .foregroundColor(.black)
                        }
                    }
                }
                ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarLeading) {
                    NavigationLink {
                        ContactUsView()
                            .environmentObject(menuOpenedEnv)
                    } label: {
                        ZStack(alignment: .topLeading) {
                            Image(systemName: "phone")
                                .padding(.top, 5)
                                .foregroundColor(.black)
                        }
                    }
                }
            } // toolbar
        } // nav view
    } // var body

    func toggleMenu() {
        menuOpenedEnv.menuOpened.toggle()
    }
}

