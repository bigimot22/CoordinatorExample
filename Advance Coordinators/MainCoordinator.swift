//
//  MainCoordinator.swift
//  Coordinators
//
//  Created by Johandre Delgado  on 05/11/2019.
//  Copyright © 2019 Johandre Delgado . All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func buySubscription() {
        let child = BuyCoordinator(navController: navigationController)
        child.parentCoordinator = self
        childCoordinators.append(child)
        child.start()
    }
    
    func createAccount() {
        let vc = CreateViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func childDidFinish(_ child: Coordinator?) {
        for (index, coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
    
    
    
    
}
