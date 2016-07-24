//
//  JeewoodAPI.swift
//  Jeewood
//
//  Created by Victor Anyirah on 7/24/16.
//  Copyright © 2016 Victor Anyirah. All rights reserved.
//

import Foundation


class JeewoodAPI{
    var network = VANetworking()
    
   var BASEURL = "http://sheltered-ridge-60236.herokuapp.com/gateway"
    
    func getUserInformation(user_id : String, completion : (sucess: Bool, data : NSDictionary?) -> Void){
        let queryString = "{users(id:" + user_id + "){name, pictureUrl, id, handle , seller { businessName id handle rating items{ description name price } } } }"
        self.network.simpleHTTPRequest("GET", queryString: queryString, jsonBody: nil) { (sucess, data, error) in
            if sucess{
                print(data)
                completion(sucess: true, data: data)
            }else{
                completion(sucess: false, data: nil)
            }
        }
    }
    
    
}