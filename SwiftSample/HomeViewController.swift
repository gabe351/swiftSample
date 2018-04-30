//
//  HomeViewController.swift
//  SwiftSample
//
//  Created by Stant 02 on 26/04/18.
//  Copyright © 2018 Stant 02. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
    
}
