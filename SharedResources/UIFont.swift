//
//  UIFont.swift
//  ShutterBridge
//
//  Created by Valentin Kalchev on 22/08/2014.
//  Copyright (c) 2014 ShutterBridge. All rights reserved.
//

import UIKit


public extension UIFont {
    class func shutterBridge_metric_regular (_ size: CGFloat = 20.0) -> UIFont { return UIFont.systemFont(ofSize: size, weight: UIFont.Weight.regular)} //UIFont(name: "Metric-Regular", size: size)
    class func shutterBridge_metric_light (_ size: CGFloat = 20.0) -> UIFont { return UIFont.systemFont(ofSize: size, weight: UIFont.Weight.light)} //UIFont(name: "Metric-Light", size: size)
    class func shutterBridge_metric_bold (_ size: CGFloat = 20.0) -> UIFont { return UIFont.systemFont(ofSize: size, weight: UIFont.Weight.bold)} //UIFont(name: "Metric-Semibold", size: size)
    // Open Sans is bundled with the app. Fall back to the system font if, for any
    // reason, the font fails to register so the UI degrades gracefully instead of
    // crashing on a force-unwrapped optional.
    class func shutterBridge_openSans_regular (_ size: CGFloat = 20.0) -> UIFont { return UIFont(name: "OpenSans", size: size) ?? UIFont.systemFont(ofSize: size, weight: .regular) }
    class func shutterBridge_openSans_bold (_ size: CGFloat = 20.0) -> UIFont { return UIFont(name: "OpenSans-Bold", size: size) ?? UIFont.systemFont(ofSize: size, weight: .bold) }
}
