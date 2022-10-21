
import SwiftUI

struct ControlView: View {
    @Binding var lightIsOn: Bool
    @Binding var groomBulb: GroomingItem


    var body: some View {
        VStack(spacing: 20.0) {
            Button(action: {
                lightIsOn.toggle()
            }, label: {
                Image(systemName: !lightIsOn ? "bolt.circle.fill" : "bolt.slash.circle.fill" )
                    .font(.system(size: 60))
            })
            Text("Turn the light bulb \(!lightIsOn ? "on" : "off")")
                .fontWeight(.bold)
        }
        .navigationTitle("Control Room")
    }
}

struct ControlView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ControlView(lightIsOn: .constant(true),id: id)
        }
    }
}
