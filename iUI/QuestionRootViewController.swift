//
//  QuestionRootViewController.swift
//  iUI
//
//  Created by Ricardo Gehrke Filho on 26/06/16.
//  Copyright © 2016 Ricardo Gehrke Filho. All rights reserved.
//

import UIKit

class QuestionRootViewController: UIViewController {
    
    @IBAction func dimissQuestionWindowViewController(segue: UIStoryboardSegue) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
