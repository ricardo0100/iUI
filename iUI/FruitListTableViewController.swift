//
//  FruitListTableViewController.swift
//  iUI
//
//  Created by Ricardo Gehrke Filho on 26/01/16.
//  Copyright © 2016 Ricardo Gehrke Filho. All rights reserved.
//

import UIKit

class FruitListTableViewController: UITableViewController {
    
    var fruitList = [
        Fruit(name: "Watermelon", description: "Delicious red fruit", photoName: "Watermelon.jpg"),
        Fruit(name: "Peach", description: "I ❤️ peaches", photoName: "Peach.jpg")
    ]
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return fruitList.count
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let fruit = fruitList[indexPath.row]
        let cell = tableView.dequeueReusableCellWithIdentifier("Fruit Cell", forIndexPath: indexPath) as! FruitTableViewCell
        cell.updateCellWith(fruit)
        
        return cell
        
    }
    
}