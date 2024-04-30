//
//  SwiftUIWithFirebaseApp.swift
//  SwiftUIWithFirebase
//
//  Created by Murat Işık on 26.04.2024.
//

import SwiftUI
import Firebase


@main
struct SwiftUIWithFirebaseApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    
    var body: some Scene {
        WindowGroup {
           RootView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
