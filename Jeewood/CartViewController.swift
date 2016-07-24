//
//  CartViewController.swift
//  Jeewood
//
//  Created by Victor Anyirah on 7/24/16.
//  Copyright © 2016 Victor Anyirah. All rights reserved.
//

import UIKit

class CartViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var table : UITableView!
    var items : [Item]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        items = AppDelegate.getAppDelegate().cart

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //TODO : Handle.
        return UITableViewCell()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items?.count ?? 0
    }

    

}
