

import SwiftUI

extension Font {
    static let mediumFont = Font.custom("Nobile-Regular", size: Font.TextStyle.subheadline.size, relativeTo: .caption)
    static let mediumSmallFont = Font.custom("Nobile-Regular", size: Font.TextStyle.footnote.size, relativeTo: .caption)
    static let smallFont = Font.custom("Nobile-Regular", size: Font.TextStyle.caption.size, relativeTo: .caption)
    static let verySmallFont = Font.custom("Nobile-Regular", size: Font.TextStyle.caption2.size, relativeTo: .caption)
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

    var body: some Scene {
        WindowGroup {
            MainView()
        }
    } // var body
}
