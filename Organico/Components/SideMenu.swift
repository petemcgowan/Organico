//
//  SideMenu.swift
//  Organico
//
//  Created by Peter McGowan on 04/01/2023.
//

import SwiftUI

struct SideMenu: View{
    let width: CGFloat
    let heightOffset: CGFloat
    let menuOpened: Bool
    let toggleMenu: () -> Void

    var body: some View {
        ZStack {
            // Dimmed background view
            GeometryReader { _ in
                EmptyView()
            }
            .background(Color.gray.opacity(0.15))
            .opacity(self.menuOpened ? 1: 0)
//            .opacity(1)
            .animation(Animation.easeIn.delay(0.25))
//            .onTapGesture {
//                print (width)
//                self.toggleMenu()
//            }
            // Menu Content
            HStack {
                MenuContent()
                    .frame(width: width)
                    .offset(x: menuOpened ? 0 : -width, y: heightOffset)
//                    .offset(x: 0, y: 20)
                    .animation(.default)
                Spacer()
            }
        }
    }
}

