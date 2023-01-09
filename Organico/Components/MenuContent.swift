//
//  MenuContent.swift
//
//  Created by Peter McGowan on 05/01/2023.
//

import SwiftUI

struct MenuItem: Identifiable  {
    var id = UUID()
    var text: String
    let imageName: String
    let handler: () -> Void = {
        print("Tapped item")
    }
}

struct MenuContent: View{
    let items: [MenuItem] = [
        MenuItem(text: "Home", imageName: "house"),
        MenuItem(text: "Profile", imageName: "person.circle"),
        MenuItem(text: "Activity", imageName: "bell"),
        MenuItem(text: "Flights", imageName: "airplane"),
        MenuItem(text: "Share", imageName: "square.and.arrow.up"),
        MenuItem(text: "Settings", imageName: "gear"),
    ]
    
    var body: some View {
        ZStack {
            Color(UIColor(red: 43/255.0, green: 40/255.0, blue: 74/255.0, alpha: 1))
            VStack(alignment: .leading, spacing: 0) {
                ForEach(items) { item in
                    HStack {
                        Image(systemName: item.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.white)
                            .frame(width: 32, height:32, alignment: .center)
                        Text(item.text)
                            .foregroundColor(Color.white)
                            .bold()
                            .font(.system(size:22))
                            .multilineTextAlignment(.leading)
                        Spacer()
                        Button("Order Now", action: menuAction)
                    }
                    .padding()
                    
                    Divider()
                }
                
                Spacer()
            }
            .padding(.top, 25)
        }
    }
    func menuAction () -> Void {
        print("menuAction")
    }
}
