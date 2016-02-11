//
//  BigAlertViewController.swift
//  iUI
//
//  Created by Ricardo Gehrke Filho on 11/02/16.
//  Copyright © 2016 Ricardo Gehrke Filho. All rights reserved.
//

import UIKit

class BigAlertViewController: UIViewController {

    @IBAction func closePopover(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}
