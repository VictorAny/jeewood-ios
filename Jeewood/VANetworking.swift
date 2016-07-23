//
//  VANetworking.swift
//  testStuff
//
//  Created by Victor Anyirah on 8/5/15.
//  Copyright (c) 2015 Victor Anyirah. All rights reserved.
//

import Foundation
import UIKit

class VANetworking {
    
    /**
    Base request function for communicating with sever via HTTP. Only for simple, non-media related transmission
    
    - parameter url: (String), HTTPMethod(String), jsonBody([String: AnyObject], completionhandler
    - returns: success, error, dictionary optional with json information via callback.
    */
    func simpleHTTPRequest(toUrl: String, HTTPMethod: String, jsonBody: [String: AnyObject]?, completionHandler: (sucess: Bool, data: NSDictionary?, error: NSError?)->Void){
        
        let initialUrl = toUrl
        let session = NSURLSession.sharedSession()
        let url = NSURL(string: initialUrl)!
        let request = NSMutableURLRequest(URL: url)
        request.HTTPMethod = HTTPMethod
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        if let HTTPBody = jsonBody{
            do {
                request.HTTPBody = try NSJSONSerialization.dataWithJSONObject(HTTPBody, options: [])
            } catch _ as NSError {
                request.HTTPBody = nil
            }
        }
        
        let task = session.dataTaskWithRequest(request){
            data, response, downloadError in
            if let error = downloadError {
                completionHandler(sucess: false, data: nil, error: error)
                print("Error communicating with server via HTTP")
                print(error)
            }
            else{
                var jsonResult : AnyObject?
                do{
                    jsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options: [])
                    completionHandler(sucess: true, data: jsonResult as? NSDictionary, error: nil)
                }catch{
                    completionHandler(sucess: false, data: nil, error: nil)
                }
            }
        }
        task.resume()
        
    }
    
    /**
    Multi-media posting.
    Has meta-data. Be very careful. Any changes made here also effect the backend, as they need to be synced up.
    
    File name refers to voice title and it's used in Content-Disposition Header but not used in backend. (so far)
    
    - parameter contentData: : NSData, toURL: String, MediaType : String, fileName: String, textContent : String, completionHandler.
    - returns: dictionary, error optionals via callback.
    */
    func postMultiMediaContent(contentData Data: NSData?, toURL tourl: String, MediaType mediaType: String, filename fileNamed: String, textContent text: String, completionHandler: (dictionaryData: NSDictionary?, error: NSError?) -> Void)
    {
        let data = Data!
        let session = NSURLSession.sharedSession()
        let url = NSURL(string: tourl)!
        let request = NSMutableURLRequest(URL: url)
        let boundary = "---------------735323031399963166993862150"
        let contentType = "multipart/form-data; boundary=\(boundary)"
        request.setValue(contentType, forHTTPHeaderField: "Content-Type")
        request.HTTPMethod = "POST"
        let bodyData = NSMutableString()
        let boundString = "\r\n--\(boundary)\r\n"
        bodyData.appendFormat(boundString)
        bodyData.appendFormat("Content-Type: text/plain\r\n")
        bodyData.appendFormat("Content-Disposition: form-data; name=\"voice\"\r\n\r\n")
        bodyData.appendFormat("\(text)")
        bodyData.appendFormat("\r\n--\(boundary)\r\n")
        bodyData.appendFormat("Content-Type: \(mediaType)\r\n")
        bodyData.appendFormat("Content-Disposition: form-data; name=\"file\"; filename=\"voicefile\"\r\n\r\n")
        let requestData = NSMutableData()
        requestData.appendData(bodyData.dataUsingEncoding(NSUTF8StringEncoding)!)
        requestData.appendData(data)
        let endString = ("---\(boundary)--")
        requestData.appendData(endString.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: true)!)
        request.setValue("\(requestData.length)", forHTTPHeaderField: "Content-Length")
        request.HTTPBody = requestData
        let task = session.dataTaskWithRequest(request){
            data, response, downloadError in
            if let error = downloadError {
                print(error)
                completionHandler(dictionaryData: nil, error: error)
            }
            else{
                var jsonResult : AnyObject?
                do{
                    jsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options: [])
                    completionHandler(dictionaryData: jsonResult as? NSDictionary, error: nil)
                }catch{
                    completionHandler(dictionaryData: nil, error: nil)
                }
            }
        }
        task.resume()
    }
    
    
    
}