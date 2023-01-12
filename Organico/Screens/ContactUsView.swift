//
//  ContactUsView.swift
//  Organico
//
//  Created by Peter McGowan on 11/01/2023.
//

import SwiftUI

struct ContactUsView: View {
    @EnvironmentObject var menuOpenedEnv: MenuOpened

    var body: some View {
        ScrollView {
            VStack {
                Group {
                    Text("Contact Details")
                        .font(Font.custom("Nobile-Regular", size: 20))
                    Text ("Organico,")
                    Text ("2 Glengarriff Road,")
                    Text ("Bantry,")
                    Text ("County Cork,")
                    Text ("Ireland P75 CC80")
                }
                .font(Font.custom("Nobile-Regular", size: 16))
                Group {
                    HStack {
                        Text("Tel Shop: ")
                            .bold()
                        Text("+353 (0)27 51391")
                    }
                    HStack {
                        Text("For online queries Email: ")
                            .bold()
                        Text("online@organico.ie")
                    }
                    HStack {
                        Text("For general queries Email: ")
                            .bold()
                        Text("info@organico.ie")
                    }
                }
            }
            .font(Font.custom("Nobile-Regular", size: 16))
        } // scrollview
        .onAppear {
            menuOpenedEnv.menuOpened = false
        }        
    }
    
    struct ContactUsView_Previews: PreviewProvider {
        static var previews: some View {
            ContactUsView()
        }
    }
}

//            Button(action: {
//                       self.isShowingMailView.toggle()
//                   }) {
//                       Text("Tap Me")
//                   }
//                   .disabled(!MFMailComposeViewController.canSendMail())
//                   .sheet(isPresented: $isShowingMailView) {
//                       MailView(result: self.$result)
//                   }
//            Group {
//                Spacer()
//                Text("Contact Us")
//                    .font(Font.custom("Nobile-Regular", size: 30))
//                Spacer()
//            }
//
//            Group {
//                Text ("Write Us")
//                Spacer()
//                Text ("Jot us a note and we’ll get back to you as quickly as possible.")
//                Spacer()
//            }
//            .font(Font.custom("Nobile-Regular", size: 16))
//            Group {
//                TextField("Name", text: .constant(""))
//                Spacer()
//                TextField("Email", text: .constant(""))
//                Spacer()
//                TextField("Phone Number", text: .constant(""))
//                Spacer()
//                TextField("What’s on your mind?", text: .constant(""))
//                Spacer()
//                Spacer()
//            }
//            .font(Font.custom("Nobile-Regular", size: 16))
//
// The straight address part (vs form)
