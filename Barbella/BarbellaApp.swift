//
//  BarbellaApp.swift
//  Barbella
//
//  Created by Jinyoung Oh on 3/9/23.
//

import SwiftUI
import FirebaseCore
//import Firebase


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct BarbellaApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
//
//    init() {
//        FirebaseApp.configure()
//    }
    
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
        }
    }
}
