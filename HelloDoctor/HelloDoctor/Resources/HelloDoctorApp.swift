//
//  HelloDoctorApp.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/12.
//

import SwiftUI

@main
struct HelloDoctorApp: App {
    @StateObject var userStatus = RootScreenModel()
    
    @UIApplicationDelegateAdaptor(HelloDoctorAppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(userStatus)
        }
    }
}

class HelloDoctorAppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        
        // 设置 inline title 属性
        let attrs: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor(.FF333333),
            .font: UIFont.monospacedSystemFont(ofSize: 18, weight: .medium)
        ]
        appearance.titleTextAttributes = attrs
        
        UINavigationBar.appearance().standardAppearance = appearance
        
        // 返回按钮颜色
        UINavigationBar.appearance().tintColor = UIColor(.FF666666)
        
        return true
    }
}
