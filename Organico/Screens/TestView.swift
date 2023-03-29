//
//  TestView.swift
//  Organico
//
//  Created by Peter McGowan on 17/03/2023.
//

import SwiftUI

struct TestView: View {
    var body: some View {
//        ScrollView {
            VStack {
            List(0..<100) {
                Text("Row \($0)")
            }
                
            .font(Font.custom("Poppins-Light", size: 16))
            .foregroundColor(Color.pink)
            }
            .font(Font.custom("Poppins-Light", size: 16))
            .foregroundColor(Color.pink)
            .toolbarBackground(.teal)
//        }
        .background(Color("SafeAreaBackgroundColor"))
//        .foregroundColor(Color.pink)
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
