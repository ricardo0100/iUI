//
//  TreesCatalogContentViewController.swift
//  iUI
//
//  Created by Ricardo Gehrke Filho on 08/02/16.
//  Copyright © 2016 Ricardo Gehrke Filho. All rights reserved.
//

import UIKit

class TreesCatalogContentViewController: UIViewController {

    @IBAction func close(sender: AnyObject) {
        pageViewController?.dismissViewControllerAnimated(true, completion: nil)
    }
    
    var pageViewController: TreesCatalogPageViewController?
    
    @IBOutlet weak var treePhotoImageView: UIImageView!

    var treePhoto: String?
    var treeIndex: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: treePhoto!)
        treePhotoImageView.image = image
    }
    
}
