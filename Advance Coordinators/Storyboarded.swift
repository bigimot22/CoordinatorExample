//
//  Storyboarded.swift
//  Coordinators
//
//  Created by Johandre Delgado  on 05/11/2019.
//  Copyright © 2019 Johandre Delgado . All rights reserved.
//

import UIKit

protocol Storyboarded {
    
    static func instantiate() -> Self
 
}



extension Storyboarded where Self: UIViewController {
    
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
    
}
