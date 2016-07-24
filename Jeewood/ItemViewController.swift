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
    @IBOutlet weak var itemCreator  : UILabel!
    @IBOutlet weak var addToCartButton : UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()
        self.fillItemVCWithItem(nil)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        self.fillItemVCWithItem(nil)
    }
    
    
    @IBAction func didAddItemToCart(sender : AnyObject){
        //TODO : Add to singleton cart cache.
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    func fillItemVCWithItem(item : Item?)
    {
        itemImage.image = UIImage(named: "sunglass-10")
        itemName.text = item?.name ?? "Enigma Sunglass"
        itemPrice.text = "20.58"
        itemCreator.text = "myCrafter"
    }
    
}
