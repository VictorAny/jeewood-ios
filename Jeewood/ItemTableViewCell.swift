//
//  ItemTableViewCell.swift
//  Jeewood
//
//  Created by Victor Anyirah on 7/23/16.
//  Copyright © 2016 Victor Anyirah. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    @IBOutlet weak var itemImage : UIImageView!
    @IBOutlet weak var itemName : UILabel!
    @IBOutlet weak var itemCost : UILabel!
    @IBOutlet weak var itemTag : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func fillCellWithItem(item : Item){
        self.itemImage.backgroundColor = UIColor.blackColor()
        self.itemName.text = item.name
        self.itemCost.text = "\(item.price)"
        self.itemName.text = item.tag
    }
    
}
