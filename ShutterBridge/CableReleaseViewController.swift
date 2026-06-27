//
//  CableReleaseViewController.swift
//  ShutterBridge
//
//  Created by Valentin Kalchev on 19/10/2015.
//  Copyright © 2015 ShutterBridge Limited. All rights reserved.
//

import UIKit

class CableReleaseViewController: TTViewController {
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func performThemeUpdate() {
        super.performThemeUpdate()
        descriptionLabel.textColor = UIColor.shutterBridge_foregroundColor()
    } 
}
