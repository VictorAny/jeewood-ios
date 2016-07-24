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
    
    var API = JeewoodAPI()
    var isSeller : Bool = false
    var user : User?
    var items : [Item]?
    var seller : Seller?
    
    var hasFetched = false

    override func viewDidLoad() {
        super.viewDidLoad()
        self.table.delegate = self
        self.table.dataSource = self
        self.table.rowHeight = 313
        self.API.getUserInformation("1") { (sucess, data) in
            if sucess{
                dispatch_async(dispatch_get_main_queue(), { 
                    print(data)
                    let dataDict = data!["data"] as! NSDictionary
                    let dictArr = dataDict["users"] as! NSArray
                    self.hasFetched = true
                    self.user  = User(data: dictArr[0] as! NSDictionary)
                    self.table.reloadData()
                })
            }else{
                print("Eew, faiured.")
            }
        }
        self.table.registerNib(UINib.init(nibName: "ProfileTableViewCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "cell1")
        self.table.registerNib(UINib.init(nibName: "ItemTableViewCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "cell2")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = self.table.dequeueReusableCellWithIdentifier("cell1") as? ProfileTableViewCell
            if !self.isSeller{
                if self.hasFetched{
                    cell?.setFieldsForUser(self.user!)
                }
                return cell!
            }else{
                if self.hasFetched{
                    cell?.setFieldsForSeller(self.seller!)
                }
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
        if self.isSeller{
            return 2
        }else{
            return 1
        }
    }
    
    @IBAction func moveToCart(sender: AnyObject){
        self.performSegueWithIdentifier("goToCart", sender: self)
    }

    

}
