//
//  OutputDispatcher.swift
//  ShutterBridge
//
//  Created by Valentin Kalchev on 02/07/2015.
//  Copyright (c) 2015 ShutterBridge Limited. All rights reserved.
// 

open class OutputDispatcher {
    public static let sharedInstance = OutputDispatcher()
    
    open var activeDispatchers: [Dispatcher]?
    
    public let audioPlayer = AudioPlayer.sharedInstance()
}
