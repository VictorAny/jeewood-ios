//
//  ItemViewController.swift
//  Jeewood
//
//  Created by Victor Anyirah on 7/23/16.
//  Copyright © 2016 Victor Anyirah. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {
    
    var item : Item!
    @IBOutlet weak var  itemImage : UIImageView!
    @IBOutlet weak var itemName : UILabel!
    @IBOutlet weak var itemPrice : UILabel!
    @IBOutlet weak var iteamCreator  : UILabel!
    @IBOutlet weak var addToCartButton : UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func didAddItemToCart(sender : AnyObject){
        //TODO : Add to singleton cart cache.
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    

}
