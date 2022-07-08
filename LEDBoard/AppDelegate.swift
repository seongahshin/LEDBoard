//
//  AppDelegate.swift
//  LEDBoard
//
//  Created by 신승아 on 2022/07/06.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        sleep(5) // 조금 위험할 수도 있는 요소, 별 기능이 없을 때만 사용
        
        return true
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // music, youtube - 사용자 프리미엄 결제했으면 play, 일시정지
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // youtube - 결제 안한 사람들한테 팝업창 띄워라
        // 카카오톡
        // 금융앱 - 화면 안 보이게 막아주는 기능 
    }
    // MARK: UISceneSession Lifecycle
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

