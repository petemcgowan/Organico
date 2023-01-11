

import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var router: TabRouter
    
    var body: some View {
        ScrollView {
            VStack {
                Group {
                    Image ("hannah-and-rachel-homepage")
                        .resizable()
                        .scaledToFill()
                    Spacer()
                    Text("Organico Online Health Food Shop")
                        .font(Font.custom("Nobile-Regular", size: 30))
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
                .font(Font.custom("Nobile-Regular", size: 16))
                Group {
                    VStack {
                        VStack {
                            Button(action: {
                                print ("Products router action")
                                router.change(to: .productsPage)
                                // the router action
                            }, label: {
                                Text ("Shop Online")
                                    .font(Font.custom("Nobile-Regular", size: 24))
                                Spacer()
                                Text("Find everything you need for a healthy, happy home. And get all your shopping delivered for only €4.95.")
                                    .font(Font.custom("Nobile-Regular", size: 15))
                                Spacer()
                                Spacer()
                                Text ("Shop Now »")
                                    .font(Font.custom("Nobile-Regular", size: 14))
                                Spacer()
                            })
                        }
                        .background(Color("shopOnlineBoxBackground"))
                        .foregroundColor(Color.white)
                        
                        Button(action: {
                            print ("Recipe router action")
                            router.change(to: .recipePage)
                            // the router action
                        }, label: {
                            VStack {
                                Text ("Recipes")
                                    .font(Font.custom("Nobile-Regular", size: 24))
                                Spacer()
                                Text ("Try some of our nourishing fully organic recipes!")
                                    .font(Font.custom("Nobile-Regular", size: 15))
                                Spacer()
                                Spacer()
                                Text ("Cook Now »")
                                    .font(Font.custom("Nobile-Regular", size: 14))
                                Spacer()
                            }
                         })
                        
                        
                        .background(Color("recipesBoxBackground"))
                        .foregroundColor(Color.white)
                        VStack {
                            Button(action: {
                                // TODO: this needs to be newsletter
                                print ("Recipe router action")
                                router.change(to: .recipePage)
                                // the router action
                            }, label: {
                                Text ("Stay Current")
                                    .font(Font.custom("Nobile-Regular", size: 24))
                                Spacer()
                                Text ("Join our newsletter for the latest on natural wellness and our fabulous giveaways (seriously—they’re fabulous).")
                                    .font(Font.custom("Nobile-Regular", size: 15))
                                Spacer()
                                Spacer()
                                Text ("Learn More »")
                                    .font(Font.custom("Nobile-Regular", size: 14))
                                Spacer()
                            })
                        }
                        .background(Color("newsletterBoxBackground"))
                        .foregroundColor(Color.white)
                    } //inner v
                }  // group
            } // outer v
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity)
            .background(.mint)
            .clipped()
        } //scrollview
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
            .environmentObject(TabRouter())
    }
}
