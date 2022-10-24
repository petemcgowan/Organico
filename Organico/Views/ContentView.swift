
import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    @StateObject var groomingItems = GroomingItems()

    var body: some View {
        MainGroomingView()
            .environmentObject(groomingItems)
            .environmentObject(cartManager)
        
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(GroomingItems())
            .environmentObject(CartManager())
    }
}
