//
//  NewsletterView.swift
//  Organico
//
//  Created by Peter McGowan on 11/01/2023.
//

import SwiftUI

struct NewsletterView: View {
    @EnvironmentObject var menuOpenedEnv: MenuOpened
    
    var body: some View {
        VStack {
            Group {
                Text("Newsletter")
                    .font(Font.custom("Nobile-Regular", size: 30))
                Spacer()
                Text("We have so much more we want to share with you!")
                    .font(Font.custom("Nobile-Regular", size: 24))
                Spacer()
            }

            Group {
                Text ("Sign-up to the Organico newsletter and we’ll show up in your inbox a few times each month with all our latest news and tips in natural health, nourishing food and environmental issues.")
                Spacer()
                Text ("Plus, we’ll keep you up-to-date with our seasonal product recommendations and our fabulous giveaways!")
                Spacer()
            }
            .font(Font.custom("Nobile-Regular", size: 16))
            Form {
                emailAddress
                Spacer()
                firstname
                Spacer()
                lastname
                Spacer()
                Spacer()

                Section {
                    submit
                }
            }
            .font(Font.custom("Nobile-Regular", size: 16))
        } // vstack
        .onAppear {
            print("Newsletter Page appeared")
            menuOpenedEnv.menuOpened = false
        }
        //subscribe button
    }
}

private extension NewsletterView {
    var emailAddress: some View {
        TextField("Email Address", text: .constant(""))
    }

    var firstname: some View {
        TextField("First Name", text: .constant(""))
    }

    var lastname: some View {
        TextField("Last Name", text: .constant(""))
    }
    
    var submit: some View {
        Link("Submit", destination: URL(string: "https://www.google.com")!)
            .environment(\.openURL, OpenURLAction { url in
                print("Open \(url)")
                return .handled
            })
    }
}

struct NewsletterView_Previews: PreviewProvider {
    static var previews: some View {
        NewsletterView()
    }
}
