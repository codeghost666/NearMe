//
//  AppDelegate.swift
//  Lulu
//
//  Created by GAV Lead on 10/17/19.
//  Copyright © 2019 Team GAV. All rights reserved.
//

import UIKit
import FacebookCore
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // Configure Facebook SDK.
        SDKApplicationDelegate.shared.application(application, didFinishLaunchingWithOptions: launchOptions)
        
        // Initialize Firebase.
        FIRApp.configure()
        
        setNavAnTabBarAppearance()
                
        return true
    }
    
    func application(_ application: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any]) -> Bool {
        // Configure Facebook SDK.
        return SDKApplicationDelegate.shared.application(application, open: url, options: options)
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    //Sets the correct colours throughout the entire interface for the navigation and tab bars
    func setNavAnTabBarAppearance (){
        let navigationBarAppearance = UINavigationBar.appearance()
        
        navigationBarAppearance.barStyle = UIBarStyle.black
        navigationBarAppearance.barTintColor = ColorPalette.bidBlue
        navigationBarAppearance.isTranslucent = false
        navigationBarAppearance.tintColor = UIColor.white
        
        UITabBar.appearance().barTintColor = UIColor.white
        UITabBar.appearance().tintColor = ColorPalette.bidBlue
    }
}

