//
//  RootSceneManager.swift
//  TabController-59462981
//
//  Created by Mufakkharul Islam Nayem on 12/24/19.
//  Copyright © 2019 Mufakkharul Islam Nayem. All rights reserved.
//

import UIKit

struct RootSceneManager {

    static func windowByLoadingRootScene(in windowScene: UIWindowScene) -> UIWindow {
        let window = UIWindow(windowScene: windowScene)
        let tabBarController = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SpecialTabBarController")
        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
        return window
    }

}
