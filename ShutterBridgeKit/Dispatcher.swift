//
//  Dispatcher.swift
//  ShutterBridge
//
//  Created by Valentin Kalchev on 02/07/2015.
//  Copyright (c) 2015 ShutterBridge Limited. All rights reserved.
//

public protocol Dispatcher { 
    func dispatch(_ dispatchable: Dispatchable)
}
