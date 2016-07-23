//
//  Item.swift
//  Jeewood
//
//  Created by Victor Anyirah on 7/23/16.
//  Copyright © 2016 Victor Anyirah. All rights reserved.
//

import Foundation


class Item {
    var dictionary : NSDictionary
    
    var item_id : String?{
        return self.dictionary["item_id"] as? String
    }
    var price : Float?{
        return self.dictionary["price"] as? Float
    }
    var seller_id : String?{
        return self.dictionary["seller_id"] as? String
    }
    var description : String?{
        return self.dictionary["description"] as? String
    }
    var name : String?{
        return self.dictionary["name"] as? String
    }
    var tag : String?{
        return self.dictionary["tag"] as? String
    }

    init(data : NSDictionary){
        self.dictionary = data
    }
    
}