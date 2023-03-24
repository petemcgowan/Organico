

import SwiftUI

extension Font {
    static let mediumFont = Font.custom("Poppins-Light", size: Font.TextStyle.subheadline.size, relativeTo: .caption)
    static let mediumSmallFont = Font.custom("Poppins-Light", size: Font.TextStyle.footnote.size, relativeTo: .caption)
    static let smallFont = Font.custom("Poppins-Light", size: Font.TextStyle.caption.size, relativeTo: .caption)
    static let verySmallFont = Font.custom("Poppins-Light", size: Font.TextStyle.caption2.size, relativeTo: .caption)
}

extension Font.TextStyle {
    var size: CGFloat {
        switch self {
        case .largeTitle: return 60
        case .title: return 48
        case .title2: return 34
        case .title3: return 24
        case .headline, .body: return 18
        case .subheadline, .callout: return 16
        case .footnote: return 14
        case .caption: return 12
        case .caption2: return 10
        @unknown default:
            return 8
        }
    }
}



@main
struct OrganicoApp: App {
//    @StateObject var router = TabRouter ()
//    @StateObject var cartManager = CartManager()
//    @StateObject var groomingItems = GroomingItems()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .background(Color.pink)
        } // windowgroup
    } // var body
}
