//
//  BuyCoordinator.swift
//  Advance Coordinators
//
//  Created by Johandre Delgado  on 06/11/2019.
//  Copyright © 2019 Johandre Delgado . All rights reserved.
//

import UIKit

class BuyCoordinator: Coordinator {
    
    weak var parentCoordinator: MainCoordinator?  // Weak to avoid retain cycles.
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navController: UINavigationController) {
        self.navigationController = navController
    }
    
    func start() {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func start(with productNumber: Int) {
        let vc = BuyViewController.instantiate()
        vc.selectedProduct = productNumber
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
//    func didFinishBuying() {
//        parentCoordinator?.childDidFinish(self)
//    }
    
}
