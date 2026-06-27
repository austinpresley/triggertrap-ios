//
//  SeparatorView.swift
//  ShutterBridge
//
//  Created by Valentin Kalchev on 10/11/2015.
//  Copyright © 2015 ShutterBridge Limited. All rights reserved.
//

import UIKit

@IBDesignable
open class SeparatorView: UIView {
    
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override open func draw(_ rect: CGRect) {
        // Drawing code
        
        let shadowPath = UIBezierPath(rect: self.bounds)
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.shutterBridge_separatorColor().cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 0.7)
        self.layer.shadowRadius = 0
        self.layer.shadowOpacity = 1.0
        self.layer.shadowPath = shadowPath.cgPath
    }
}
