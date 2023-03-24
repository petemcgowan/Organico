

import SwiftUI

struct HomePageView: View {
//    @EnvironmentObject var menuOpenedEnv: MenuOpened
    @EnvironmentObject var router: TabRouter

    var body: some View {
            VStack {
                ScrollView {
                Group {
                    Image ("hannah-and-rachel-homepage")
                        .resizable()
                        .scaledToFill()
                    Spacer()
                    Text("Organico Online Health Food Shop")
                        .font(Font.custom("Poppins-Light", size: 30))
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                Group {
                    Text ("At Organico, it’s our mission to enable you to live a healthier, happier and tastier life.")
                    Spacer()
                    HStack {
                        Text(" We are Hannah and Rachel Dare, and our parents opened Organico nearly 30 years ago in Bantry.")
                        Spacer()
                    }
                    Spacer()
                    Text( "We’ve since added a deli and bakery where we invite you to take part in the connection and community that accompany a shared love of fresh, healthy food, great coffee and dedication to naturally good health.")
                    Spacer()
                    Text("You can enjoy peace of mind, knowing that every choice you make with us is a healthy one — good for yourself, your family and the environment.")
                }
                .font(Font.custom("Poppins-Light", size: 16))
                Spacer()
                Group {
                    VStack {
                        HStack {
                            Button(action: {
                                router.change(to: .productsPage)
                            }, label: {
                                Text ("Shop Online")
                                    .font(Font.custom("Poppins-Light", size: 24))
                                Spacer()
                                Text("Find everything you need for a healthy, happy home. And get all your shopping delivered for only €4.95.")
                                    .font(Font.custom("Poppins-Light", size: 15))
                                Spacer()
                                Spacer()
                                Text ("Shop Now »")
                                    .font(Font.custom("Poppins-Light", size: 14))
                                Spacer()
                            })
                        }
                        .background(Color("shopOnlineBoxBackground"))
                        .foregroundColor(Color("fontColor"))

                        Spacer()
                        Button(action: {
                            router.change(to: .recipesPage)
                        }, label: {
                            HStack {
                                Text ("Organic Recipes")
                                    .font(Font.custom("Poppins-Light", size: 24))
                                Spacer()
                                Text ("Try some of our nourishing fully organic recipes!")
                                    .font(Font.custom("Poppins-Light", size: 15))
                                Spacer()
                                Spacer()
                                Text ("Cook Now »")
                                    .font(Font.custom("Poppins-Light", size: 14))
                                Spacer()
                            }
                         })
                        .background(Color("recipesBoxBackground"))
                        .foregroundColor(Color("fontColor"))
                        
                        Spacer()
                        HStack {
                            NavigationLink {
                                NewsletterView()
                            } label: {
                                Text ("Stay Current")
                                    .font(Font.custom("Poppins-Light", size: 24))
                                Spacer()
                                Text ("Join our newsletter for the latest on natural wellness and our fabulous giveaways (seriously—they’re fabulous).")
                                    .font(Font.custom("Poppins-Light", size: 15))
                                Spacer()
                                Spacer()
                                Text ("Learn More »")
                                    .font(Font.custom("Poppins-Light", size: 14))
                                Spacer()
                            }
                        }
                        .background(Color("newsletterBoxBackground"))
                        .foregroundColor(Color.white)
                    } //inner v
                    .background(Color("SafeAreaBackgroundColor"))
                }  // group
                } //scrollview
                .background(Color("SafeAreaBackgroundColor"))
            } // outer vstack
//            .frame(maxWidth: .infinity,
//                   maxHeight: .infinity)
//            .clipped()
        .onAppear {
            print("Home Page appeared")
//            menuOpenedEnv.menuOpened = false
        }
    } // body
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
            .environmentObject(TabRouter())
    }
}
