//
//  User.swift
//  Jeewood
//
//  Created by Victor Anyirah on 7/23/16.
//  Copyright © 2016 Victor Anyirah. All rights reserved.
//

import Foundation

class User {
    var data : NSDictionary
    var id : String?{
        return self.data["id"] as? String
    }
    var name : String?{
        return self.data["name"] as? String
    }
    var seller : Seller?{
        if self.data["is_seller"] != nil{
            return Seller(data: self.data["seller_data"] as! NSDictionary)
        }else{
            return nil
        }
    }
    var pictureUrl : String?{
        return self.data["picture_url"] as? String
    }
    var cart : [Item]{
        var returnArray = [Item]()
        if let cartItems = self.data["cart"] as? NSArray{
            for item in cartItems{
                let returnItem = Item(data: item as! NSDictionary)
                returnArray.append(returnItem)
            }
        }
        return returnArray
    }
    var favorites : [Item]{
        var returnArray = [Item]()
        if let cartItems = self.data["favorites"] as? NSArray{
            for item in cartItems{
                let returnItem = Item(data: item as! NSDictionary)
                returnArray.append(returnItem)
            }
        }
        return returnArray
    }
    
    init(data : NSDictionary){
        self.data = data
    }
    
}