
import SwiftUI

struct ControlView: View {
    @Binding var lightIsOn: Bool
    var writer: Writer
    var writerOfArray: Writer
    var groomingOfArray: GroomingItem

    var body: some View {
        let displayId = String (groomingOfArray.id)
        let displayPrice = String (groomingOfArray.price)
        
        VStack(spacing: 20.0) {
            Button(action: {
                lightIsOn.toggle()
            }, label: {
                Image(systemName: !lightIsOn ? "bolt.circle.fill" : "bolt.slash.circle.fill" )
                    .font(.system(size: 60))
            })
            Text("Turn the light bulb \(!lightIsOn ? "on" : "off")")
                .fontWeight(.bold)
            Text(writerOfArray.name)
            Text(writerOfArray.surname)
            Text(writerOfArray.website)
            Text(writerOfArray.twitterNickname)
            Text(displayId)
            Text(groomingOfArray.title)
            Text(groomingOfArray.productImage)
            Text(displayPrice)
        }
        .navigationTitle("Control Room")
    }
}

struct ControlView_Previews: PreviewProvider {
    static let writerPreview = Writer(
        name: "Tiago",
        surname: "Pereira",
        website: "createwithswift.com",
        twitterNickname: "@tiagogogo"
    )
    static let writerOfArrayPreview = Writer(
        name: "Tiago",
        surname: "Pereira",
        website: "createwithswift.com",
        twitterNickname: "@tiagogogo"
    )
    
    static let groomingOfArrayPreview = GroomingItem(id: 6,
                 title: "BetterYou Magnesium Body Lotion (180ml)",
                 productImage: "BetterYou_Magnesium_Body_Lotion_180ml",
                 price:9.99
    )

    static var previews: some View {
        NavigationView {
            ControlView(lightIsOn: .constant(true), writer: writerPreview, writerOfArray: writerOfArrayPreview, groomingOfArray: groomingOfArrayPreview)
        }
    }
}
