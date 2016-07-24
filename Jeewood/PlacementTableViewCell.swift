//
//  PlacementTableViewCell.swift
//  Jeewood
//
//  Created by Victor Anyirah on 7/24/16.
//  Copyright © 2016 Victor Anyirah. All rights reserved.
//

import UIKit

class PlacementTableViewCell: UITableViewCell {

    @IBOutlet weak var place_image : UIImageView!
    @IBOutlet weak var label : UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setUpWith(label: String, image: UIImage){
        self.label.text = label
//        self.place_image.image = image
    }
}
