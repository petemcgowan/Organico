

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
//    var url: URL
    var htmlFileName: String
    
    private let webView = WKWebView()

    func makeUIView (context: Context) -> some UIView {
        return webView
    }
    func updateUIView (_ uiView: UIViewType, context: Context) {
        webView.load(htmlFileName)
    }
    //    func makeUIView (context: Context) -> WKWebView {
    //        return WKWebView()
    //    }

//    func updateUIView (_ webView: WKWebView, context: Context) {
//        let request = URLRequest (url: url)
//        webView.load(request)
//    }
  
    // this for augmenting the html file after it's loaded e.g. removing header/footer
//    public func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
//        let cssString = "page-header {display: none;}"
//        let script = "var style = document.createElement('style'); style.innerHTML = '\(cssString)'; document.head.appendChild(style);"
//        webView.evaluateJavaScript(script,
//                                   completionHandler: { (response, error) -> Void in
//            print(error!)
//            webView.isHidden = false
//        })
//        let cssString1 = "page-bottom {display: none;}"
//        let script1 = "var style = document.createElement('style'); style.innerHTML = '\(cssString1)'; document.head.appendChild(style);"
//        webView.evaluateJavaScript(script1,
//                                   completionHandler: { (response, error) -> Void in
//            webView.isHidden = false
//        })
//    }
}

extension WKWebView {
    func load (_ htmlFileName: String) {
        guard !htmlFileName.isEmpty else {
            return print("Empty file name")
        }
        
        guard let filePath = Bundle.main.path(forResource: htmlFileName,
                                              ofType: "html") else {
                return print ("Error file path")
        }
        
        do {
            let htmlString = try String(contentsOfFile: filePath, encoding: .utf8)
            loadHTMLString(htmlString, baseURL: URL(fileURLWithPath: filePath))
        } catch {
            print("error here")
        }
    }
}
