//
//  RotationNavigationViewController.swift
//  ShutterBridge
//
//  Created by Ross Gibson on 05/08/2014.
//  Copyright (c) 2014 ShutterBridge. All rights reserved.
//

import UIKit

class RotationNavigationViewController: UINavigationController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return AppTheme() == .normal ? .lightContent : .default
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Rotation
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.all
    }
    
    override var shouldAutorotate : Bool {
        // Allow rotation.
        return true
    }
}
