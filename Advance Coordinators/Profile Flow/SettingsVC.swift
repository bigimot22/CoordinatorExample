//
//  SettingsVC.swift
//  Advance Coordinators
//
//  Created by Johandre Delgado  on 08/11/2019.
//  Copyright © 2019 Johandre Delgado . All rights reserved.
//

import UIKit

class SettingsVC: UIViewController , Storyboarded {

weak var coordinator: SettingsCoordinator?
    var data: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Settings"
        print("Data: \(data ?? "")")
    }
    

    
    

}
