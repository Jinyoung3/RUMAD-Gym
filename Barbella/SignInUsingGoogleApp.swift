//
//  SignInUsingGoogleApp.swift
//  Barbella
//
//  Created by Jinyoung Oh on 3/17/23.
//
import SwiftUI

@main
struct SignInUsingGoogleApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @AppStorage("signIn") var isSignIn = false
    
    var body: some Scene {
        WindowGroup {
            if !isSignIn {
                SignUp()
            } else {
                ContentView()
            }
        }
    }
}
