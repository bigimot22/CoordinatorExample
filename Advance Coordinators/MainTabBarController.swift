//
//  MainTabBarController.swift
//  Advance Coordinators
//
//  Created by Johandre Delgado  on 07/11/2019.
//  Copyright © 2019 Johandre Delgado . All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    let main = MainCoordinator(navigationController: UINavigationController())
    let profile = ProfileCoordinator(navigationController: UINavigationController())

    override func viewDidLoad() {
        super.viewDidLoad()

        main.start()
        profile.start()
        viewControllers = [main.navigationController, profile.navigationController]
        
    }
    

   
    

}
