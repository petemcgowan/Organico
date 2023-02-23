

import SwiftUI

struct SideMenu: View{
    let width: CGFloat
    let heightOffset: CGFloat
    let menuOpened: Bool
    let toggleMenu: () -> Void
//    @Binding var isShowing: Bool
    @EnvironmentObject var router: TabRouter
//    @EnvironmentObject var menuOpenedEnv: MenuOpened

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
                //                MenuContent(isShowing: $isShowing)
                    MenuContent()
                    .frame(width: width)
                    .offset(x: menuOpened ? 0 : -width, y: heightOffset)
//                    .offset(x: 0, y: 20)
                    .animation(.default)
                    .environmentObject(router)
//                    .environmentObject(menuOpenedEnv)

                Spacer()
            }
        } // zstack
        .onDisappear {
            print("SideMenu disappeared")
//                    isShowing.toggle()
        }
    }
}

