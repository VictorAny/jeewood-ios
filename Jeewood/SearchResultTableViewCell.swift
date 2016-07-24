//
//  SearchResultTableViewCell.swift
//  Jeewood
//
//  Created by Victor Anyirah on 7/23/16.
//  Copyright © 2016 Victor Anyirah. All rights reserved.
//

import UIKit

class SearchResultTableViewCell: UITableViewCell {

    
    @IBOutlet weak var searchHandle : UILabel!
    @IBOutlet weak var sellerName : UILabel!
    @IBOutlet weak var sellerImage : UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func fillResultWithSeller(seller : Seller){
        searchHandle.text = seller.handle
        sellerName.text = seller.businessName
        sellerImage.image = UIImage(data:NSData(contentsOfURL:NSURL(string: seller.logoUrl!)!)!)
    }
    
}
