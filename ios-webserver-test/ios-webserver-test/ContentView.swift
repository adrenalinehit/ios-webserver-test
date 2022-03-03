//
//  ContentView.swift
//  ios-webserver-test
//
//  Created by Nick Payne on 03/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        WebView(request: URLRequest(url: URL(string: "https://www.apple.com")!))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
