//
//  ProfileViewController.swift
//  Jeewood
//
//  Created by Victor Anyirah on 7/23/16.
//  Copyright © 2016 Victor Anyirah. All rights reserved.
//

import UIKit

class ProfileViewController: BaseFetchingViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet var table : UITableView!
    
    var isSeller : Bool = false
    var user : User?
    var items : [Item]?
    var seller : Seller?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.table.registerNib(UINib.init(nibName: "ProfileTableViewCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "cell1")
        self.table.registerNib(UINib.init(nibName: "ItemTableViewCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "cell2")
        
        //TODO: Get User

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = self.table.dequeueReusableCellWithIdentifier("cell1") as? ProfileTableViewCell
            if self.isSeller{
                cell?.setFieldsForUser(self.user!)
                return cell!
            }else{
                cell?.setFieldsForSeller(self.seller!)
                return cell!
            }
        }else{
            let cell = self.table.dequeueReusableCellWithIdentifier("cell2") as? ItemTableViewCell
            let item = self.items![indexPath.row]
            cell?.fillCellWithItem(item)
            return cell!
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        if self.isSeller{
            return 2
        }else{
            return 1
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
  
    

}
