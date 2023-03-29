//
//  ContactUsView.swift
//  Organico
//
//  Created by Peter McGowan on 11/01/2023.
//

import SwiftUI

struct ContactUsView: View {
//    @EnvironmentObject var menuOpenedEnv: MenuOpened

    var body: some View {
        ScrollView {
            VStack {
                Text("Contact Us")
                    .font(Font.custom("Poppins-Light", size: 30))
                    .foregroundColor(Color("fontColor"))
                Spacer()
                     .frame(minHeight: 10, maxHeight: 20)
                Group {
                    Text("Contact Details")
                        .font(Font.custom("Poppins-Light", size: 20))
                    Text ("Organico,")
                    Text ("2 Glengarriff Road,")
                    Text ("Bantry,")
                    Text ("County Cork,")
                    Text ("Ireland P75 CC80")
                }
                .font(Font.custom("Poppins-Light", size: 16))
                Group {
                    Spacer()
                    HStack {
                        Text("Tel Shop: ")
                            .bold()
                        Text("+353 (0)27 51391")
                    }
                    Spacer()
                    Spacer()
                    HStack {
                        Text("For online queries Email: ")
                            .bold()
                        Text("online@organico.ie")
                    }
                    Spacer()
                    HStack {
                        Text("For general queries Email: ")
                            .bold()
                        Text("info@organico.ie")
                    }
                }
            }
            .font(Font.custom("Poppins-Light", size: 16))
            .foregroundColor(Color("altFontColor"))
        } // scrollview
        .background(Color("SafeAreaBackgroundColor"))
        .onAppear {
//            menuOpenedEnv.menuOpened = false
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
//                    .font(Font.custom("Poppins-Light", size: 30))
//                Spacer()
//            }
//
//            Group {
//                Text ("Write Us")
//                Spacer()
//                Text ("Jot us a note and we’ll get back to you as quickly as possible.")
//                Spacer()
//            }
//            .font(Font.custom("Poppins-Light", size: 16))
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
//            .font(Font.custom("Poppins-Light", size: 16))
//
// The straight address part (vs form)
