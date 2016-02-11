//
//  TreesCatalogPageViewController.swift
//  iUI
//
//  Created by Ricardo Gehrke Filho on 08/02/16.
//  Copyright © 2016 Ricardo Gehrke Filho. All rights reserved.
//

import UIKit

class TreesCatalogPageViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    var currentPageIndex = 0
    var goingToPageIndex = 0
    
    var treesList = ["ipe.jpg", "felicidade.jpg", "pessego.jpg", "araucaria.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        delegate = self
        let vc = viewControllerAtIndex(currentPageIndex)
        let vcs = [vc!]
        setViewControllers(vcs, direction: .Forward, animated: true, completion: nil)
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        return viewControllerAtIndex(currentPageIndex + 1)
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        return viewControllerAtIndex(currentPageIndex - 1)
    }
    
    func viewControllerAtIndex(index: Int) -> UIViewController? {
        if index < 0 || index == treesList.count {
            return nil
        }
        goingToPageIndex = index
        let vc = storyboard!.instantiateViewControllerWithIdentifier("TreesCatalogContentViewController") as! TreesCatalogContentViewController
        vc.treePhoto = treesList[index]
        vc.treeIndex = index
        vc.pageViewController = self
        return vc
    }
    
    func pageViewController(pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        if completed {
            currentPageIndex = goingToPageIndex
        }
    }
    
}
