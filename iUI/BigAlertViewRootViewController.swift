//
//  BigAlertViewRootViewController.swift
//  iUI
//
//  Created by Ricardo Gehrke Filho on 11/02/16.
//  Copyright © 2016 Ricardo Gehrke Filho. All rights reserved.
//

import UIKit

class BigAlertViewRootViewController: UIViewController {

    @IBAction func launchPopover(sender: UIButton) {
        let bigalert = storyboard!.instantiateViewControllerWithIdentifier("BigAlertNavigationController")
        bigalert.modalPresentationStyle = .Popover
        
        presentViewController(bigalert, animated: true, completion:nil)
        
        let popoverPresentationController = bigalert.popoverPresentationController
        popoverPresentationController?.sourceView = sender
    }
}
