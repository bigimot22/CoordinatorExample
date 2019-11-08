//
//  ProfileCoordinator.swift
//  Advance Coordinators
//
//  Created by Johandre Delgado  on 08/11/2019.
//  Copyright © 2019 Johandre Delgado . All rights reserved.
//

import UIKit


class ProfileCoordinator: NSObject, Coordinator, UINavigationControllerDelegate {
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        navigationController.delegate = self
        let vc = ProfileVC.instantiate()
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func editSettings() {
        let child = SettingsCoordinator(navController: navigationController)
        child.parentCoordinator = self
        childCoordinators.append(child)
        child.start()
    }
    
    
//    func createAccount() {
//        let vc = CreateViewController.instantiate()
//        vc.coordinator = self
//        navigationController.pushViewController(vc, animated: true)
//    }
    
    
    
    func childDidFinish(_ child: Coordinator?) {
        for (index, coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
    
    
    func navigationController(_ navigationController: UINavigationController, didShow viewcontroller: UIViewController, animated: Bool) {
        guard let fromViewController = navigationController.transitionCoordinator?.viewController(forKey: .from) else { return }
        if navigationController.viewControllers.contains(fromViewController) { return }
        
        if let buyViewController = fromViewController as? BuyViewController {
            childDidFinish(buyViewController.coordinator)
        }
    }
    
    
}

