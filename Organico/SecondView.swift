
import SwiftUI


struct SecondView: View {
    var writer: Writer
    var writerArray: [Writer] = []
    
    var body: some View {
        VStack {
            Text(writer.name)
            Text(writer.surname)
            Text(writer.website)
            Text(writer.twitterNickname)
        }
    }
}

//struct SecondView_Previews: PreviewProvider {
//    // 5. Creare a static instance of Writer for your preview
//    static let writerPreview = Writer(
//        name: "Tiago",
//        surname: "Pereira",
//        website: "createwithswift.com",
//        twitterNickname: "@tiagogogo"
//    )
//    static let writerOfArrayPreview = Writer(
//        name: "Tiago",
//        surname: "Pereira",
//        website: "createwithswift.com",
//        twitterNickname: "@tiagogogo"
//    )
//
//    static var previews: some View {
//        // 5. Use the right SecondView initializator
//        SecondView(writer: writerPreview, writerOfArrayPreview)
//    }
//}
