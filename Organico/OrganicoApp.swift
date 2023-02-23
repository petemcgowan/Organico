

import SwiftUI

extension Font {
    static let mediumFont = Font.custom("Nobile-Regular", size: Font.TextStyle.subheadline.size, relativeTo: .caption)
    static let mediumSmallFont = Font.custom("Nobile-Regular", size: Font.TextStyle.footnote.size, relativeTo: .caption)
    static let smallFont = Font.custom("Nobile-Regular", size: Font.TextStyle.caption.size, relativeTo: .caption)
    static let verySmallFont = Font.custom("Nobile-Regular", size: Font.TextStyle.caption2.size, relativeTo: .caption)
}

extension Font.TextStyle {
    var size: CGFloat {
        switch self {
        case .largeTitle: return 60
        case .title: return 48
        case .title2: return 34
        case .title3: return 24
        case .headline, .body: return 18
        case .subheadline, .callout: return 16
        case .footnote: return 14
        case .caption: return 12
        case .caption2: return 10
        @unknown default:
            return 8
        }
    }
}


struct Test1View: View {
    var body: some View {
        Text("This is a great app")
    }
}

struct Test2View: View {
    var body: some View {
        ScrollView {
            Text ("Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom ")
                .font(Font.custom("Nobile-Regular", size: 30))
            Text ("Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom ")
                .font(Font.custom("Nobile-Regular", size: 30))
            Text ("Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom ")
                .font(Font.custom("Nobile-Regular", size: 30))
        }
        
    }
}

struct Test3View: View {
    var body: some View {
        ScrollView {
            Text ("Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom ")
                .font(Font.custom("Nobile-Regular", size: 30))
            Text ("Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom ")
                .font(Font.custom("Nobile-Regular", size: 30))
            Text ("Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom ")
                .font(Font.custom("Nobile-Regular", size: 30))
        }
        
    }
}

struct Test4View: View {
    var body: some View {
        ScrollView {
            Text ("Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom ")
                .font(Font.custom("Nobile-Regular", size: 30))
            Text ("Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom ")
                .font(Font.custom("Nobile-Regular", size: 30))
            Text ("Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom Enough text to get beyond the bottom ")
                .font(Font.custom("Nobile-Regular", size: 30))
        }
        
    }
}


@main
struct OrganicoApp: App {
//    @StateObject var router = TabRouter ()
//    @StateObject var cartManager = CartManager()
//    @StateObject var groomingItems = GroomingItems()
    
    var body: some Scene {
        WindowGroup {
            MainView()
//            NavigationView {
//                ZStack {
//                    TabView() {
//                        HomePageView()
//                            .tag(Screen.homePage)
//    //                        .environmentObject(menuOpenedEnv)
//                            .environmentObject(router)
//                            .tabItem{
//                                Label("Home", systemImage: "house")
//                            }
////                            .foregroundColor(Color("fontColor"))
//                        Test2View()
//                            .tabItem{
//                                Label("Test2", systemImage: "house")
//                            }
//                        Test3View()
//                            .tabItem{
//                                Label("Test3", systemImage: "house")
//                            }
//                        Test4View()
//                            .tabItem{
//                                Label("Test4", systemImage: "house")
//                            }
//                    } // tabview
//                    .navigationBarTitleDisplayMode(.inline)
//                    .background(Color("SafeAreaBackgroundColor"))
//                    .toolbar {
//                        ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarTrailing) {
//                            NavigationLink {
//                                NewsletterView()
//                                //                            .environmentObject(menuOpenedEnv)
//                            } label: {
//                                ZStack(alignment: .topLeading) {
//                                    Image(systemName: "newspaper")
//                                        .padding(.top, 5)
//                                        .foregroundColor(.black)
//                                }
//                            }
//                        }
//                        ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarTrailing) {
//                            NavigationLink {
//                                CartView()
//                                    .environmentObject(cartManager)
//                                    .environmentObject(groomingItems)
//                            } label: {
//                                CartButton(numberOfGroomingItems: groomingItems.cartContents.count)
//                            }
//                        }
//                        ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarLeading) {
//                            NavigationLink {
//                                ShippingView()
//        //                            .environmentObject(menuOpenedEnv)
//                            } label: {
//                                ZStack(alignment: .topLeading) {
//                                    Image(systemName: "car.circle")
//                                        .padding(.top, 5)
//                                        .foregroundColor(.black)
//                                }
//                            }
//                        }
//                        ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarLeading) {
//                            NavigationLink {
//                                ContactUsView()
//        //                            .environmentObject(menuOpenedEnv)
//                            } label: {
//                                ZStack(alignment: .topLeading) {
//                                    Image(systemName: "phone")
//                                        .padding(.top, 5)
//                                        .foregroundColor(.black)
//                                }
//                            }
//                        }
//                    } // .toolbar
//                    .background(Color("SafeAreaBackgroundColor"))
//                } // zstack
//                .background(Color("SafeAreaBackgroundColor"))
//            }// navView
//            .background(Color("SafeAreaBackgroundColor"))
        } // windowgroup
    } // var body
}
