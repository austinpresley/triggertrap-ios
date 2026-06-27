//
//  TimelapseProViewController.swift
//  ShutterBridge
//
//  Created by Valentin Kalchev on 08/04/2015.
//  Copyright (c) 2015 ShutterBridge. All rights reserved.
//

import UIKit

class TimelapseProViewController: CenterViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var previewImageView: UIImageView!
    @IBOutlet var textView: UITextView!
    @IBOutlet weak var viewInAppStoreButton: BorderButton!
    @IBOutlet weak var separatorView: UIView!
    @IBOutlet var textViewBackground: UIView!
    
    fileprivate let buttonHeight: CGFloat = 44.0
    fileprivate let padding: CGFloat = 8

    fileprivate enum ActionSheetType {
        case viewInAppStore
    }

    fileprivate var actionSheetType: ActionSheetType?

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text = NSLocalizedString("ShutterBridge Timelapse Pro is a new approach to creating awesome timelapses. Connect your device to your camera with a ShutterBridge Mobile kit, and you're set to get creative!\n\nTimelapse Pro has a modular approach to timelapse creation, letting you create sequences using the building blocks of timelapses - intervalometers and delays. With these blocks you can create timelapses of all shapes and sizes. Timelapse Pro's intervalometers allow you to set your interval between shots, as well as when you'd like the intervalometer to stop; either by the number of shots or after a set amount of time has passed.", comment: "ShutterBridge Timelapse Pro is a new approach to creating awesome timelapses. Connect your device to your camera with a ShutterBridge Mobile kit, and you're set to get creative!\n\nTimelapse Pro has a modular approach to timelapse creation, letting you create sequences using the building blocks of timelapses - intervalometers and delays. With these blocks you can create timelapses of all shapes and sizes. Timelapse Pro's intervalometers allow you to set your interval between shots, as well as when you'd like the intervalometer to stop; either by the number of shots or after a set amount of time has passed.")
        
        
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        performThemeUpdate()

        NotificationCenter.default.addObserver(self, selector: #selector(TimelapseProViewController.performThemeUpdate), name: NSNotification.Name(rawValue: ConstThemeHasBeenUpdated), object: nil)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        self.view.layoutSubviews()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Private

    fileprivate func showActionSheet(_ rect: CGRect) {

        var openLinkTitle = ""

        if let actionSheetType = actionSheetType {
            switch actionSheetType {

            case ActionSheetType.viewInAppStore:
                openLinkTitle = NSLocalizedString("Open in App Store", comment: "Open in App Store")
                break
            }

            let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)

            let openLinkAction = UIAlertAction(title: openLinkTitle, style: .default) { (action) in
                UIApplication.shared.open(URL(string: constViewInAppStoreLink)!, options: [:], completionHandler: nil)
            }

            let cancelAction = UIAlertAction(title: NSLocalizedString("Cancel", comment: "Cancel"), style: .cancel, handler: nil)

            alertController.addAction(openLinkAction)
            alertController.addAction(cancelAction)

            if let popoverController = alertController.popoverPresentationController {
                popoverController.sourceView = viewInAppStoreButton
                popoverController.sourceRect = CGRect(x: (viewInAppStoreButton?.bounds.midX)!, y: (viewInAppStoreButton?.bounds.minY)!, width: 0, height: 0)
            }

            self.present(alertController, animated: true, completion: nil)
        }
    }

    // MARK: - Notifications

    @objc func performThemeUpdate() {
        self.navigationController?.navigationBar.barTintColor = UIColor.shutterBridge_primaryColor(1.0)
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont.shutterBridge_metric_regular(23.0), NSAttributedString.Key.foregroundColor: UIColor.shutterBridge_iconColor(1.0)]

        self.leftButton?.setBackgroundImage(#imageLiteral(resourceName: "MenuIcon"), for: .normal)

        self.rightButton?.setBackgroundImage(#imageLiteral(resourceName: "OptionsIcon"), for: .normal)
        
        self.view.backgroundColor = UIColor.shutterBridge_backgroundColor()
        
        self.textViewBackground.backgroundColor = UIColor.shutterBridge_fillColor()
        
        textView.backgroundColor = UIColor.shutterBridge_fillColor()
        textView.textColor = UIColor.shutterBridge_accentColor()

        viewInAppStoreButton.fillColor = UIColor.shutterBridge_primaryColor()
        viewInAppStoreButton.borderColor = UIColor.shutterBridge_primaryColor()
        viewInAppStoreButton.setTitleColor(UIColor.shutterBridge_fillColor(), for: UIControl.State())

        //bottomBackgroundView.backgroundColor = UIColor.shutterBridge_naturalColor()
        //topGradientView.color = UIColor.shutterBridge_fillColor()
        //bottomGradientView.color = UIColor.shutterBridge_fillColor()
        separatorView.backgroundColor = UIColor.shutterBridge_accentColor()
    }

    // MARK: - Actions

    @IBAction func viewInAppStoreButtonTapped(_ button: BorderButton) {
        actionSheetType = ActionSheetType.viewInAppStore
        showActionSheet(button.frame)
    }
}
