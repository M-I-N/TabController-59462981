//
//  SpecialTabBarController.swift
//  TabController-59462981
//
//  Created by Mufakkharul Islam Nayem on 12/24/19.
//  Copyright © 2019 Mufakkharul Islam Nayem. All rights reserved.
//

import UIKit

class SpecialTabBarController: UITabBarController, UITabBarControllerDelegate {

    var window: UIWindow?

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }

    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        if let _ = viewController as? LogoutViewController {
            if let windowScene = view.window?.windowScene {
                window = RootSceneManager.windowByLoadingRootScene(in: windowScene)
            }
        }
    }

}
