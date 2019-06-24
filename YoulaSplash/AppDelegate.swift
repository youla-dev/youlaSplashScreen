//
//  AppDelegate.swift
//  YoulaSplash
//
//  Created by Artur Sardaryan on 4/9/19.
//  Copyright © 2019 Artur Sardaryan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    private var splashPresenter: SplashPresenterDescription? = SplashPresenter()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        splashPresenter?.present()
        
        let delay: TimeInterval = 2
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            self.splashPresenter?.dismiss { [weak self] in
                self?.splashPresenter = nil
            }
        }
        
        return true
    }
    
}
