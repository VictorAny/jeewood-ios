//
//  BaseFetchingViewController.swift
//  Jeewood
//
//  Created by Victor Anyirah on 7/23/16.
//  Copyright © 2016 Victor Anyirah. All rights reserved.
//

import Foundation
import UIKit


class BaseFetchingViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
 
    @IBOutlet weak var tableOne : UITableView!
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //TODO : Implement.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        //TODO : Implement.
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return UITableViewCell()
    }


    
}