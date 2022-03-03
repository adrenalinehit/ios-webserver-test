//
//  ios_webserver_testApp.swift
//  ios-webserver-test
//
//  Created by Nick Payne on 03/03/2022.
//

import SwiftUI
import Foundation
import GCDWebServer

@main
struct ios_webserver_testApp: App {
    
    init(){
        let webServer = GCDWebServer()

           webServer.addDefaultHandler(forMethod: "GET", request: GCDWebServerRequest.self, processBlock: {request in
                   return GCDWebServerDataResponse(html:"<html><body><p>Hello World</p></body></html>")
                   
               })
               
           webServer.start(withPort: 8080, bonjourName: "GCD Web Server")
           
           print("Visit \(webServer.serverURL) in your web browser")
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
