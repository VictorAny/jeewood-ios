//
//  ProfileTableViewCell.swift
//  Jeewood
//
//  Created by Victor Anyirah on 7/23/16.
//  Copyright © 2016 Victor Anyirah. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var profileView : UIImageView!
    @IBOutlet weak var userName : UILabel!
    @IBOutlet weak var userHandle : UILabel!
    @IBOutlet weak var userDescription : UITextView!
    
    var isUser : Bool = true
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setStyleCircleForImage(profileView)
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setStyleCircleForImage(imgView: UIImageView){
        imgView.layer.cornerRadius = self.profileView.frame.size.width / 2
        imgView.clipsToBounds = true
    }
    
    func setFieldsForUser(user: User){
        isUser = true
        self.userName.text = user.name ?? "IAmMe"
        self.userHandle.text = user.handle ?? "Aliea"
        self.userDescription.text = "Live life to the fullest, you never know when it may be taken from you."
//        self.userDescription.hidden = true
        self.profileView.image = UIImage(named: "stock-pic-2")
    }
    
    func setFieldsForSeller(seller : Seller){
        isUser = false
        //TODO: Implement later
        self.userName.text = seller.businessName ?? ""
        self.userHandle.text = seller.handle ?? ""
        self.userDescription.hidden = true
        self.profileView.backgroundColor = UIColor.clearColor()
        self.profileView.image = UIImage(named: "stock-pic-2")

        
        
    }
}
