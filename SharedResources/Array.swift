//
//  NSArray.swift
//  ShutterBridge
//
//  Created by Ross Gibson on 21/08/2014.
//  Copyright (c) 2014 ShutterBridge. All rights reserved.
//

import UIKit

extension Array {
    func sum() -> Int {
        var sum: Int = 0
        
        for (_, obj) in self.enumerated() {
            sum += obj as! Int
        }
        
        return sum
    }
}
