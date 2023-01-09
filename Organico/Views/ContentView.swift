
import SwiftUI


struct ContentView: View {
    @EnvironmentObject var groomingItems : GroomingItems
    @EnvironmentObject var cartManager: CartManager
//    @StateObject var groomingItems = GroomingItems()
//    @StateObject var cartManager = CartManager()

    var body: some View {
//        ZStack {
            ProductsView()
                .environmentObject(groomingItems)
                .environmentObject(cartManager)
            Button(action: {
                //Open Menu
//                self.menuOpened.toggle()

            }, label: {
                Text("Open Menu")
                    .bold()
                    .foregroundColor(Color.white)
                    .frame(width:200, height:50, alignment: .center)
                    .background (Color(.systemBlue))
            })
//            SideMenu(width: UIScreen.main.bounds.width/1.6, menuOpened: menuOpened, toggleMenu: toggleMenu)
//        }
//        .edgesIgnoringSafeArea(.all)
        
        
    }
    
//    func toggleMenu() {
//        menuOpened.toggle()
//    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .environmentObject(GroomingItems())
            .environmentObject(CartManager())
    }
}
