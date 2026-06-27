//
//  FeedbackViewController.swift
//  ShutterBridge
//
//  Created by Ross Gibson on 19/08/2014.
//  Copyright (c) 2014 ShutterBridge. All rights reserved.
//

import UIKit
import TTCounterLabel

class FeedbackViewController: UIViewController, TTCounterLabelDelegate, TTCircleTimerDelegate {
    
    // MARK: - Outlets
    
    @IBOutlet var counterLabel: TTCounterLabel?
    @IBOutlet var circleTimer: TTCircleTimer?
    
    // Bramping/Star Trail/LE HDR/LE HDR Timelapse
    
    @IBOutlet var exposureLabel: UILabel?
    @IBOutlet var exposureCounterLabel: TTCounterLabel?
    @IBOutlet var pauseLabel: UILabel?
    @IBOutlet var pauseCounterLabel: TTCounterLabel?
    @IBOutlet var shotsTakenLabel: UILabel?
    
    // Timelapse / Timewarp (use elapsed label for next)
    
    @IBOutlet var elapsedLabel: UILabel?
    @IBOutlet var elapsedCounterLabel: TTCounterLabel?
    
    @IBOutlet var infoLabel: UILabel?
    @IBOutlet var feedbackPanel: UIView?
    
    //Distance Lapse
    
    @IBOutlet var circularSlider: TTCircularSlider?
    
    @IBOutlet var untilLabel: UILabel?
    @IBOutlet var sinceLabel: UILabel?
    @IBOutlet var speedLabel: UILabel?
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.shutterBridge_primaryColor(1.0)
        
        counterLabel?.boldFont = UIFont.shutterBridge_openSans_bold(55.0)
        counterLabel?.regularFont = UIFont.shutterBridge_openSans_regular(55.0)
        counterLabel?.font = UIFont.shutterBridge_openSans_regular(25.0)
        
        exposureCounterLabel?.boldFont = UIFont.shutterBridge_openSans_bold(17.0)
        exposureCounterLabel?.regularFont = UIFont.shutterBridge_openSans_regular(17.0)
        exposureCounterLabel?.font = UIFont.shutterBridge_openSans_regular(13.0)
        
        pauseCounterLabel?.boldFont = UIFont.shutterBridge_openSans_bold(17.0)
        pauseCounterLabel?.regularFont = UIFont.shutterBridge_openSans_regular(17.0)
        pauseCounterLabel?.font = UIFont.shutterBridge_openSans_regular(13.0)
        
        elapsedCounterLabel?.boldFont = UIFont.shutterBridge_openSans_bold(17.0)
        elapsedCounterLabel?.regularFont = UIFont.shutterBridge_openSans_regular(17.0)
        elapsedCounterLabel?.font = UIFont.shutterBridge_openSans_regular(13.0) 
        
        performThemeUpdate()
    }

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        if #available(iOS 13.0, *){
            performThemeUpdate()
        }
    }
    
    func performThemeUpdate() {
        self.view.backgroundColor = UIColor.shutterBridge_primaryColor()
        
        feedbackPanel?.backgroundColor = UIColor.shutterBridge_color(UIColor.shutterBridge_primaryColor(), change: 0.2)
        
        counterLabel?.textColor = UIColor.shutterBridge_fillColor(1.0)
        counterLabel?.updateApperance()
        
        circleTimer?.trackTintColor = UIColor.shutterBridge_trackTintColor(1.0)
        circleTimer?.progressTintColor = UIColor.shutterBridge_fillColor(1.0)
        
        exposureCounterLabel?.textColor = UIColor.shutterBridge_fillColor(1.0)
        exposureCounterLabel?.updateApperance()
        
        pauseLabel?.textColor = UIColor.shutterBridge_fillColor(1.0)
        pauseCounterLabel?.textColor = UIColor.shutterBridge_fillColor(1.0)
        pauseCounterLabel?.updateApperance()
        
        elapsedCounterLabel?.textColor = UIColor.shutterBridge_fillColor(1.0)
        elapsedCounterLabel?.updateApperance()
        
        exposureLabel?.textColor = UIColor.shutterBridge_fillColor(1.0)
        elapsedLabel?.textColor = UIColor.shutterBridge_fillColor(1.0)
        
        infoLabel?.textColor = UIColor.shutterBridge_fillColor(1.0)
        untilLabel?.textColor = UIColor.shutterBridge_fillColor(1.0)
        sinceLabel?.textColor = UIColor.shutterBridge_fillColor(1.0)
        speedLabel?.textColor = UIColor.shutterBridge_fillColor(1.0)
        
        shotsTakenLabel?.textColor = UIColor.shutterBridge_fillColor(1.0)
        
        circularSlider?.minimumTrackTintColor = UIColor.shutterBridge_color(UIColor.shutterBridge_primaryColor(), change: 0.2)
        circularSlider?.maximumTrackTintColor = UIColor.shutterBridge_naturalColor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func startAnimations() {
        circleTimer?.start()
        counterLabel?.start()
        elapsedCounterLabel?.start()
    }
    
    func stopAnimations() {
        circleTimer?.stop()
        
        counterLabel?.stop()
        counterLabel?.reset()
        
        elapsedCounterLabel?.stop()
        elapsedCounterLabel?.reset()
        
        exposureCounterLabel?.stop()
        pauseCounterLabel?.stop()
    }
    
    func resumeAnimations() {
        
        if ((circleTimer?.indeterminate) != nil) {
            circleTimer?.indeterminate = 1
        }
        
        circleTimer?.layer.layoutIfNeeded()
        circleTimer?.layer.setNeedsDisplay()
    } 
    
    // MARK: - TTCounterLabelDelegate
    
    func countdownDidEnd(forSource source: TTCounterLabel!) {
        //
    }
    
    // MARK: - TTCircleTimerDelegate
    
    func progressComplete() {
        //
    }
    
}
