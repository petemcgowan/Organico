
import Foundation


enum SideMenuViewModel: Int, CaseIterable {
    case home
    case products
    case recipes
    case aboutUs
    case shipping
    case newsLetter
    case contactUs
    
    var title: String {
        switch self {
            case .home: return "Home"
            case .products: return "Products"
            case .recipes: return "Recipes"
            case .aboutUs: return "About Us"
            case .shipping: return "Shipping"
            case .newsLetter: return "Newsletter"
            case .contactUs: return "Contact Us"
        }
    }

    var imageName: String {
        switch self {
        case .home: return "house"
        case .products: return "banknote"
        case .recipes: return "fork.knife"
        case .aboutUs: return "info.circle"
        case .shipping: return "car.circle"
        case .newsLetter: return "newspaper"
        case .contactUs: return "phone"
        }
    }
}
