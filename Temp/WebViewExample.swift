//
//  WebViewExample.swift
//  Temp
//
//  Created by next on 27/10/25.
//

import SwiftUI
import WebKit

struct WebViewExample: View {
    var body: some View {
        WebView()
        
    }
}

struct WebView: UIViewRepresentable{
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let url = URL(string: "https://apple.com")
        if let url = url{
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    
}

struct WebViewExample_Previews: PreviewProvider {
    static var previews: some View {
        WebViewExample()
    }
}







  //MARK: - Just Run the app in simulator there is no error
