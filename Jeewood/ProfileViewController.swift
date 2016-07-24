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
    var seller : Seller?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.table.registerNib(UINib.init(nibName: "ProfileTableViewCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "cell1")
        
        //TODO: Get User

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.table.dequeueReusableCellWithIdentifier("cell1") as? ProfileTableViewCell
        if self.isSeller{
            cell?.setFieldsForUser(self.user!)
        }else{
            cell?.setFieldsForSeller(self.seller!)
        }
        return cell!
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
  
    

}
