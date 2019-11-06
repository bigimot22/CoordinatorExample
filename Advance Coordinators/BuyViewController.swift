//
//  BuyViewController.swift
//  Coordinators
//
//  Created by Johandre Delgado  on 06/11/2019.
//  Copyright © 2019 Johandre Delgado . All rights reserved.
//

import UIKit

class BuyViewController: UIViewController, Storyboarded {
    
    weak var coordinator: BuyCoordinator?
    var selectedProduct = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Buy Product # \(selectedProduct)"
    }
    
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(true)
//        coordinator?.didFinishBuying()
//    }
    

   

}
