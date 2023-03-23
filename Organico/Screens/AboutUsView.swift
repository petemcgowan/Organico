

import SwiftUI

struct AboutUsView: View {
    
    var body: some View {
        ScrollView{
            VStack {
                Group {
                    Text("About Us")
                        .font(Font.custom("Poppins-Light", size: 30))
                    Spacer()
                         .frame(minHeight: 10, maxHeight: 20)
                    Image("HannahandRachel-AboutUsPortrait")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                         .frame(minHeight: 10, maxHeight: 20)
                }
                .foregroundColor(Color("fontColor"))
                Group {
                    Text("Organico is a small **independent Irish family business** run by sisters Hannah & Rachel Dare.")
                    Spacer()
                         .frame(minHeight: 10, maxHeight: 20)
                }
                .foregroundColor(Color("fontColor"))
                Group {
                    Text("Organico offers **dedicated, individual service** which depends completely on the **passion and energy** of our **fantastic** team of **staff**, many of whom have been working with us for years. When Organico was started in the early 1990's by Alan Dare it was a one-man show, run by Alan with a little help from his (little) daughters, who loved playing shop! Now Organico comprises a Shop in Bantry a Deli and a Bakery; and in total employs over 30 people. ")
                    Spacer()
                         .frame(minHeight: 10, maxHeight: 20)
                }
                .foregroundColor(Color("fontColor"))
                Group {
                    Text("**Our team includes**: Fleur, Christine, Russell, Ceri, Helen, Katrina, Sarune, Mahelia & Laura in the Shop, Viv & Gearoid in Goods Inwards; Dan, Carla and Jessica in the Online Team; Geena and Morwenna in the Bakery, Brid, Sharon, Michelle, Elaine and Niamh in the Deli team, Jaime works on digital strategy, Catherine designs our posters and Eithne in the office makes sure we pay our bills on time! ")
                    Spacer()
                        .frame(minHeight: 10, maxHeight: 20)
                    Text("**When it comes to good food**, we are a pretty enthusiastic bunch. If you have any questions about recipes, naturally good foods, or hard to find ingredients do drop us a line or call in if you are local. We stock predominantly organic foods, all either organic or local fruit and veg, organic wines, ports, sherry, and lots of good quality natural medicines, food supplements and natural 'clean' beauty products.")
                    Spacer()
                        .frame(minHeight: 10, maxHeight: 20)
                }
                .foregroundColor(Color("fontColor"))
                Group {
                    Text("Whenever possible we like to buy from local suppliers. We also like to stock fairly traded goods. We have our own Organic Licence which allows us to sell our vegetables loose rather than having to package them.")
                    Spacer()
                         .frame(minHeight: 10, maxHeight: 20)
                    Text("If you are interested in joining our team please call in and introduce yourself or email us on info at organico.ie")
                    Spacer()
                         .frame(minHeight: 5, maxHeight: 10)
                }
                .foregroundColor(Color("fontColor"))
            } // end vstack
//            .frame(maxWidth: .infinity,
//                   maxHeight: .infinity)
            .background(Color("SafeAreaBackgroundColor"))
            .clipped()
            .font(Font.custom("Poppins-Light", size: 16))

        } // Scrollview
        .background(Color("SafeAreaBackgroundColor"))
    } // body
}

struct AboutUsView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsView()
            .environmentObject(TabRouter())
    }
}
