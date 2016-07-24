//
//  Seller.swift
//  Jeewood
//
//  Created by Victor Anyirah on 7/23/16.
//  Copyright © 2016 Victor Anyirah. All rights reserved.
//

import Foundation


class Seller {
    
    var data : NSDictionary
    
    var id : String?{
        return self.data["id"] as? String
    }
    
    var userId : String?{
        return self.data["userId"] as? String
    }
    
    var averageRating : Float?{
        return self.data["averageRating"] as? Float
    }
    
    var rateCount: Int?{
        return self.data["rateCount"] as? Int
    }
    
    var businessName : String?{
        return self.data["businessName"] as? String
    }
    
    var logoUrl : String?{
        return self.data["logo_url"] as? String
    }
    
    var handle : String?{
        return self.data["handle"] as? String
    }
    
    init(data : NSDictionary){
        self.data = data
    }
}