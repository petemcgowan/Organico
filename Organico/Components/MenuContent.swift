
import SwiftUI

struct MenuItem: Identifiable  {
    var id = UUID()
    var text: String
    let imageName: String
    let menuDestination: SideMenuViewModel
    let handler: () -> Void = {
        print("Tapped item")
    }
}

struct MenuContent: View{
//    @Binding var isShowing: Bool
    @EnvironmentObject var router: TabRouter
    @State var selectedTable: Int?
    @EnvironmentObject var menuOpenedEnv: MenuOpened

    let items: [MenuItem] = [
        MenuItem(text: "Home", imageName: "house", menuDestination: SideMenuViewModel.home),
        MenuItem(text: "Products", imageName: "banknote", menuDestination: SideMenuViewModel.products),
        MenuItem(text: "Recipes", imageName: "fork.knife", menuDestination: SideMenuViewModel.recipes),
        MenuItem(text: "About Us", imageName: "info.circle", menuDestination: SideMenuViewModel.aboutUs),
        MenuItem(text: "Shipping", imageName: "car.circle", menuDestination: SideMenuViewModel.shipping),
        MenuItem(text: "Newsletter", imageName: "newspaper", menuDestination: SideMenuViewModel.newsLetter),
        MenuItem(text: "Contact Us", imageName: "phone", menuDestination: SideMenuViewModel.contactUs),
    ]
    
    var body: some View {
        ZStack {
            Color(UIColor(red: 43/255.0, green: 40/255.0, blue: 74/255.0, alpha: 1))
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Spacer()
                    Button(action: {menuOpenedEnv.menuOpened.toggle()}, label: {
                        Image(systemName: "xmark")
                            .frame(width: 32, height: 32)
                            .foregroundColor(.white)
                            .padding()
                    })
                }
                
                ForEach(items) { item in
                    
                    HStack {
                        if (item.menuDestination == SideMenuViewModel.home) {
                            Button(action: {
                                print ("home page clicked")
                                router.change(to: .homePage)
                                menuOpenedEnv.menuOpened.toggle()
                            }, label: {
                                Image(systemName: item.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.white)
                                    .frame(width: 32, height:32, alignment: .center)
                                Text(item.text)
                                    .foregroundColor(Color.white)
                                    .bold()
                                    .font(.system(size:22))
                                    .multilineTextAlignment(.leading)
                            })
                        } else if (item.menuDestination == SideMenuViewModel.recipes) {
                            Button(action: {
                                print ("recipes page clicked")
                                router.change(to: .recipePage)
                                menuOpenedEnv.menuOpened.toggle()
                            }, label: {
                                Image(systemName: item.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.white)
                                    .frame(width: 32, height:32, alignment: .center)
                                Text(item.text)
                                    .foregroundColor(Color.white)
                                    .bold()
                                    .font(.system(size:22))
                                    .multilineTextAlignment(.leading)
                            })
                        } else if (item.menuDestination == SideMenuViewModel.aboutUs) {
                            Button(action: {
                                print ("about us page clicked")
                                router.change(to: .aboutUsPage)
                                menuOpenedEnv.menuOpened.toggle()
                            }, label: {
                                Image(systemName: item.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.white)
                                    .frame(width: 32, height:32, alignment: .center)
                                Text(item.text)
                                    .foregroundColor(Color.white)
                                    .bold()
                                    .font(.system(size:22))
                                    .multilineTextAlignment(.leading)
                            })
                        }
                        else
                        {
//                            NavigationLink(destination: self.getDestination(item: item), tag: 4, selection: self.customBinding()) {
                            NavigationLink(destination: self.getDestination(item: item)) {
                                Image(systemName: item.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.white)
                                    .frame(width: 32, height:32, alignment: .center)
                                Text(item.text)
                                    .foregroundColor(Color.white)
                                    .bold()
                                    .font(.system(size:22))
                                    .multilineTextAlignment(.leading)
                            } // nav link
                        } // if menuDestination
                    } // hstack
                    .padding()
                    
                    Divider()
                } // foreach
                
                Spacer()
            } // vstack
            .padding(.top, 25)
            
        } // zstack
    }
    
    // this to put the menu away, onTapGesture or simultaneousGesture doesn't do it right
    func customBinding() -> Binding<Int?> {
        
        let binding = Binding<Int?>(get: {
            self.selectedTable
        }, set: {
            print("Table \(String(describing: $0)) chosen")
            if $0 == 4 {
                menuOpenedEnv.menuOpened.toggle()
            }
            self.selectedTable = $0
        })
        return binding
    }
    
    func menuAction () -> Void {
        print("menuAction")
    }
    
    func getDestination(item: MenuItem) -> AnyView {
        
        switch  item.menuDestination {
//            case SideMenuViewModel.home:
//                return AnyView(HomePageView())
//            case SideMenuViewModel.products:
//                return AnyView(ProductsView())
//            case SideMenuViewModel.recipes:
//                return AnyView(OrganicRecipesView())
//            case SideMenuViewModel.aboutUs:
//                return AnyView(AboutUsView())
            case SideMenuViewModel.shipping:
                return AnyView(ShippingView()
                                .environmentObject(menuOpenedEnv))
            case SideMenuViewModel.newsLetter:
                return AnyView(NewsletterView()
                                .environmentObject(menuOpenedEnv))
            case SideMenuViewModel.contactUs:
                return AnyView(ContactUsView()
                                .environmentObject(menuOpenedEnv))
            default:
                return AnyView(HomePageView()
                                .environmentObject(menuOpenedEnv))

        }
    }
}
