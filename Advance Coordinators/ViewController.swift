//
//  ViewController.swift
//  Advance Coordinators
//
//  Created by Johandre Delgado  on 06/11/2019.
//  Copyright © 2019 Johandre Delgado . All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded  {

   weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction private func didTapCreateAccount(_ sender: UIButton) {
        print("didTapCreateAccount.")
        coordinator?.createAccount()
    }
    
    
    @IBAction private func didTapBuySubscription(_ sender: UIButton) {
        print("didTapBuySubscription.")
        coordinator?.buySubscription()
    }


}

