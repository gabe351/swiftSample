//
//  ViewController.swift
//  SwiftSample
//
//  Created by Stant 02 on 19/04/18.
//  Copyright © 2018 Stant 02. All rights reserved.
//

import UIKit

class LoadingViewController: UIViewController {
    
    
    let loader = LoaderViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }

    @IBAction func showLoaderDidPressed(_ sender: Any) {
        add(loader)
        
        let deadlineTime = DispatchTime.now() + .seconds(5)
        DispatchQueue.main.asyncAfter(deadline: deadlineTime) {
            self.loader.remove()
        }
    }        
}

