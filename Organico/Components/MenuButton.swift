//
//  MenuView.swift
//  Organico
//
//  Created by Peter McGowan on 04/01/2023.
//

import SwiftUI

struct MenuButton: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(systemName: "info.circle")
                .padding(.top, 5)

        }
    }
}

struct MenuButton_Previews: PreviewProvider {
    static var previews: some View {
        MenuButton()
    }
}
