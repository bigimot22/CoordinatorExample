//
//  SettingsCoordinator.swift
//  Advance Coordinators
//
//  Created by Johandre Delgado  on 08/11/2019.
//  Copyright © 2019 Johandre Delgado . All rights reserved.
//

import UIKit

class SettingsCoordinator: Coordinator {
    
    weak var parentCoordinator: ProfileCoordinator?  // Weak to avoid retain cycles.
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navController: UINavigationController) {
        self.navigationController = navController
    }
    
    func start() {
        let vc = SettingsVC.instantiate()
        vc.data = "Data for Settings"
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    
}
