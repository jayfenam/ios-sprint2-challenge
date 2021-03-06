//
//  ShoppingListCollectionViewCell.swift
//  Shopping List
//
//  Created by Jonathan Ferrer on 5/10/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit


class ShoppingListCollectionViewCell: UICollectionViewCell {

    func updateViews() {
        guard let shoppingItem = shoppingItem else { return }
        imageView.image = UIImage(named: shoppingItem.imageName)  
        nameLabel.text = shoppingItem.name
        if shoppingItem.added == true {
            itemAddedLabel.text = "Added"
            itemAddedLabel.textColor = .green
        } else {
            itemAddedLabel.text = "Not Added"
            itemAddedLabel.textColor = .red
        }
    }

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var itemAddedLabel: UILabel!
    var shoppingItem: ShoppingItem?{
        didSet{
            print("item was recieved")
            updateViews()
        }
    }
    
}
