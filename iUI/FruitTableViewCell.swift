//
//  FruitTableViewCell.swift
//  iUI
//
//  Created by Ricardo Gehrke Filho on 26/01/16.
//  Copyright © 2016 Ricardo Gehrke Filho. All rights reserved.
//

import UIKit

class FruitTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    func updateCellWith(fruit: Fruit) {
        
        nameLabel.text = fruit.name
        
        descriptionLabel.text = fruit.description
        
        photoImageView.image = UIImage(named: fruit.photoName)
        
    }
    
}
