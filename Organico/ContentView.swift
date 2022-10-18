
import SwiftUI


struct ContentView: View {
    
    @State var data2: [GroomingItem] = [
        GroomingItem(id: 1,
                     title: "A.Vogel Neem Shampoo (200ml)",
                     productImage: "A_Vogel_Neem_Shampoo_200ml",
                     price:9.99 ),
        GroomingItem(id: 2,
                     title: "Absolute Aromas - Organic Shave Oil (15ml)",
                     productImage: "Absolute Aromas_Organic_Shave_Oil_15ml",
                     price:9.99),
        GroomingItem(id: 3,
                     title: "Balmonds Skin Salvation Moisturising Ointment (60ml)",
                     productImage: "Balmonds_Skin_Salvation_Moisturising_Ointment_60ml",
                     price:9.99),
        GroomingItem(id: 4,
                     title: "Balmonds Skin Salvation Moisturising Ointment (120ml)",
                     productImage: "Balmonds_Skin_Salvation_Moisturising_Ointment_120ml",
                     price:9.99),
        GroomingItem(id: 5,
                     title: "BetterYou Magnesium Body Lotion (180ml)",
                     productImage: "BetterYou_Magnesium_Body_Lotion_180ml",
                     price:9.99),
        GroomingItem(id: 6,
                     title: "BetterYou Magnesium Body Lotion (180ml)",
                     productImage: "BetterYou_Magnesium_Body_Lotion_180ml",
                     price:9.99)
    ]
    @State private var showingAlert = false
    var writerForSecondView = Writer(
        name: "Giovanni",
        surname: "Monaco",
        website: "createwithswift.com",
        twitterNickname: "@giovanni_jean"
    )

    
    var columnGrid : [GridItem] = [GridItem(.flexible()),
                    GridItem(.flexible())]
    // 2. Add a var to define whether SecondView should be showing
    @State private var showSecondView = false
    
    var body: some View {
        ScrollView {
            LazyVGrid (columns: columnGrid) {
                ForEach(data2, id: \.id) { groom in
                    VStack{
                        Image(groom.productImage)
                            .resizable()
                            .scaledToFill()
                        Text(groom.title)
                        Text(groom.price.asCurrencyWith2Decimals())
                        Button(action: {
                            self.showSecondView.toggle()
                        }, label: {
                            Text("Button")
                        })
                        // 2. Add a sheet modifier to present SecondView modally
                        .sheet(isPresented: $showSecondView){
                            // 5. Use the new SecondView initializer
                            SecondView(writer: writerForSecondView)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
