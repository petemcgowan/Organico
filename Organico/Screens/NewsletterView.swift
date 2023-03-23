

import SwiftUI

struct Response: Codable {
    var results: [HttpResult]
}

struct HttpResult: Codable {
    var userId: Int
    var id: Int
    var title: String
    var completed: Bool
}

struct PostModel: Decodable {
    let id: Int
    let userId: Int
    let title: String
    let body: String
}

struct NewsletterView: View {
//    @EnvironmentObject var menuOpenedEnv: MenuOpened
    @State private var fname: String = ""
    @State private var lname: String = ""
    @State private var eaddress: String = ""
    
    @State private var results = [HttpResult]()

    let jsonURL = "https://jsonplaceholder.typicode.com/todos"
    let jsonPostURL = "https://jsonplaceholder.typicode.com/posts"
    // JSONP
    let newsletterURLJson = "https://organico.us1.list-manage.com/subscribe/post-json?u=78152c6223edaed0ca0056c1a&id=151c1fac43&c=?"
    let newsletterURL = "https://organico.us1.list-manage.com/subscribe/post?u=78152c6223edaed0ca0056c1a&id=151c1fac43"
    let newsletterURLPlain = "https://organico.us1.list-manage.com/subscribe/post"
    
    var body: some View {
        ScrollView {
        VStack {
            VStack {
                Text("Newsletter")
                    .font(Font.custom("Poppins-Light", size: 28))
                Spacer()
                HStack{
                    Text("We have so much more we want to share with you!")
                        .font(Font.custom("Poppins-Light", size: 20))
                    Spacer()
                }
            }
            .foregroundColor(Color("fontColor"))
            Spacer()

            VStack {
                HStack {
                    Text ("Sign-up to the Organico newsletter and we’ll show up in your inbox a few times each month with all our latest news and tips in natural health, nourishing food and environmental issues.")
                    Spacer()
                }
                Spacer()
                HStack {
                    Text ("Plus, we’ll keep you up-to-date with our seasonal product recommendations and our fabulous giveaways!")
                    Spacer()
                }
                Spacer()
            }
            .foregroundColor(Color("fontColor"))
            .font(Font.custom("Poppins-Light", size: 19))
//            Form {
            VStack {
                TextField ("Email address:", text: $eaddress, prompt: Text("Email address"))
                    .background(Color("fontColor"))
                    .frame(height: 50)
                Spacer()

                TextField ("First name:",  text: $fname, prompt: Text("First name"))
                    .background(Color("fontColor"))
                    .frame(height: 50)
                Spacer()
                TextField ("Last Name:",  text: $lname, prompt: Text("Last Name"))
                    .background(Color("fontColor"))
                    .frame(height: 50)
                Spacer()
            }
            .foregroundColor(Color("altFontColor"))
            .font(Font.custom("Poppins-Light", size: 22))

            Spacer()
            Spacer()
            Button(action: {
//                loadData(fromURL: jsonURL)
//                postDataOdenza()
//                postDataNewsletter() // this was the main one commented in
//                Task {
//                    await submitToNewsletter()
//                }
            }, label: {
                HStack {
                    Spacer()
                    Text ("Submit")
                        .font(Font.custom("Poppins-Light", size: 22))
                        .frame(height: 50)
                    Spacer()
                }
            })
            .background(Color("altFontColor"))
            .foregroundColor(Color("headerFontColor"))
//            .frame(height: 150)
//            .scrollContentBackground(.hidden)
            .background(Color("SafeAreaBackgroundColor"))
            .font(Font.custom("Poppins-Light", size: 22))
            .foregroundColor(Color("fontColor"))
        } // vstack
        //subscribe button
            
        } // scrollview
        .foregroundColor(Color("fontColor"))
        .background(Color("SafeAreaBackgroundColor"))
        .font(Font.custom("Poppins-Light", size: 16))

    }
    
    func loadData(fromURL url:String) {
        guard let url = URL(string: url) else {
            print("Invalid URL")
            return
        }

        let request = URLRequest(url: url)

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode([HttpResult].self, from: data) {
                    // we have good data – go back to the main thread
                    DispatchQueue.main.async {
                        // update our UI
                        self.results = decodedResponse
                        print("Results", self.results)
                    }

                    // everything is good, so we can exit
                    return
                }
            }

            // if we're still here it means there was a problem
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }

    func postDataNewsletter() {
        guard let url = URL (string: newsletterURLPlain) else {return}
        let emailAddressNL = "jellyumbrella@gmail.com"
        let firstNameNL = "Jelly"
        let lastNameNL = "Umbrella"
        
//        let body: [String: Any] = ["EMAIL": emailAddressNL, "FNAME": firstNameNL, "LNAME": lastNameNL]
//        let body: [String: Any] = ["members": [ "email_address": emailAddressNL, "status": "subscribed", "merge_fields": [ "FNAME": firstNameNL, "LNAME": lastNameNL]]]
        let body: [String: Any] = ["apikey": "78152c6223edaed0ca0056c1a", "id": "151c1fac43", "email": ["email":emailAddressNL, "euid":"", "leid": ""], "merge_vars": [ "FNAME": firstNameNL, "LNAME": lastNameNL], "double_optin": "false"]
        print (body)

        
        let finalData = try! JSONSerialization.data(withJSONObject: body)
        print (finalData)

        var request = URLRequest (url: url)
        request.httpMethod = "POST"
        request.httpBody = finalData
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        print (request)
        URLSession.shared.dataTask(with: request) { (data, res, err) in
            do{
                if let data = data {
                    
                    let result = try JSONDecoder().decode(PostModel.self, from: data)
                    print (result)
                } else {
                    print("No data")
                }
                
            } catch (let error) {
                print ("error:", error.localizedDescription)
            }
        }.resume()
    }
    
    func postDataOdenza() {
        guard let url = URL (string: jsonPostURL) else {return}
        let title = "foo"
        let bar = "bar"
        let userId = 1
        
        let body: [String: Any] = ["title": title, "body": bar, "userId": userId]
        
        let finalData = try! JSONSerialization.data(withJSONObject: body)
        
        var request = URLRequest (url: url)
        request.httpMethod = "POST"
        request.httpBody = finalData
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        print (request)
        print (finalData)
        URLSession.shared.dataTask(with: request) { (data, res, err) in
            do{
                if let data = data {
                    
                    let result = try JSONDecoder().decode(PostModel.self, from: data)
                    print (result)
                } else {
                    print("No data")
                }
                
            } catch (let error) {
                print ("error:", error.localizedDescription)
            }
        }.resume()
    }
    
    func postData(fromURL url:String) {
        guard let url = URL(string: jsonPostURL) else {
            print("Invalid URL")
            return
        }

        let request = URLRequest(url: url)

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode([HttpResult].self, from: data) {
                    // we have good data – go back to the main thread
                    DispatchQueue.main.async {
                        // update our UI
                        self.results = decodedResponse
                        print("Results", self.results)
                    }

                    // everything is good, so we can exit
                    return
                }
            }

            // if we're still here it means there was a problem
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }
    

}


private extension NewsletterView {
    var emailAddress: some View {
        TextField("Email Address", text: $fname)
//        .background(Color("SafeAreaBackgroundColor"))
//        .font(Font.custom("Poppins-Light", size: 22))
//        .foregroundColor(Color("fontColor"))
    }

    var firstname: some View {
        TextField("First Name", text: $lname)
//        .background(Color("SafeAreaBackgroundColor"))
//        .font(Font.custom("Poppins-Light", size: 22))
//        .foregroundColor(Color("fontColor"))
    }

    var lastname: some View {
        TextField("Last Name", text: $eaddress)
//        .background(Color("SafeAreaBackgroundColor"))
//        .font(Font.custom("Poppins-Light", size: 22))
//        .foregroundColor(Color("fontColor"))
    }
}

struct NewsletterView_Previews: PreviewProvider {
    static var previews: some View {
        NewsletterView()
    }
}
