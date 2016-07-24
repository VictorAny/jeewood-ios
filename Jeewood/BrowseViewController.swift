//
//  BrowseViewController.swift
//  Jeewood
//
//  Created by Victor Anyirah on 7/23/16.
//  Copyright © 2016 Victor Anyirah. All rights reserved.
//

import UIKit

class BrowseViewController: UITableViewController{

    var infoArray = ["Cop these new shoes!", "The world is ready for you", "Be ambitious. You deserve it.", "Stop hesistating"]
    var photoArray = [ "stock-pic-5", "profile-pic-4", "profile-pic-2", "stock-pic-1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        self.table.registerNib(UINib(nibName: "PlacementTableViewCell", bundle:  NSBundle.mainBundle()), forCellReuseIdentifier: "cell")
//        
//        self.table.rowHeight = 250
//        self.table.delegate = self
//        self.table.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    //    if indexPath.row == 1{
            self.performSegueWithIdentifier("toItemVc", sender: self)
 //       }
    }
    



    
}
