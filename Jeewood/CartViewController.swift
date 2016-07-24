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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.table.registerNib(UINib.init(nibName:"ItemTableViewCell", bundle : NSBundle.mainBundle() ), forCellReuseIdentifier: "cell")
        self.table.delegate = self
        self.table.dataSource = self
        self.table.rowHeight = 330
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.table.dequeueReusableCellWithIdentifier("cell") as! ItemTableViewCell
        cell.itemName.text = "Enigma Sunglass"
        cell.itemImage.image = UIImage(named: "sunglass-10")
        cell.itemCost.text = "29.95"
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }


}
