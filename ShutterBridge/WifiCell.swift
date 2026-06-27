//
//  WifiCell.swift
//  ShutterBridge
//
//  Created by Valentin Kalchev on 16/10/2014.
//  Copyright (c) 2014 ShutterBridge. All rights reserved.
//

import UIKit

class WifiCell: UICollectionViewCell {
    @IBOutlet weak var deviceImage: UIImageView!
    @IBOutlet weak var deviceName: UILabel!
    @IBOutlet weak var connectedImage: UIImageView!
    @IBOutlet weak var separatorView: UIView!
    
    override var bounds : CGRect {
        didSet {
            // Fix autolayout constraints broken in Xcode 6 GM + iOS 7.1
            self.contentView.frame = bounds
        }
    }
    
    var deviceConnected: Bool = false {
        didSet {
            if deviceConnected {
                connectedImage.isHidden = false
            } else {
                connectedImage.isHidden = true
            }
            
            self.backgroundColor = UIColor.shutterBridge_fillColor()
            deviceName.textColor = UIColor.shutterBridge_accentColor()
            separatorView.backgroundColor = UIColor.shutterBridge_foregroundColor()
            deviceImage.image = ImageWithColor(UIImage(named: "wifiMaster")!, color: UIColor.shutterBridge_primaryColor())
            connectedImage.image = ImageWithColor(UIImage(named: "wifiRedTick")!, color: UIColor.shutterBridge_primaryColor())
        }
    }
}
