
import SwiftUI

struct LightBulbView: View {
    @State var isOn: Bool = true
    var body: some View {
        NavigationView {
            VStack(spacing: 20.0) {
                Image(systemName: "lightbulb.fill")
                    .font(.system(size: 60))
                    .foregroundColor(isOn ? .yellow : .gray)
                    .navigationTitle(Text("Light Bulb"))
                NavigationLink(destination: ControlView(lightIsOn: $isOn)) {
                    Text("Control Panel")
                        .fontWeight(.bold)
                }
            }
        }
    }
}

struct LightBulbView_Previews: PreviewProvider {
    static var previews: some View {
        LightBulbView()
    }
}
