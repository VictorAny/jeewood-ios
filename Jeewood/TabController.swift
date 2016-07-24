//
//  TabController.swift
//  Jeewood
//
//  Created by Victor Anyirah on 7/24/16.
//  Copyright © 2016 Victor Anyirah. All rights reserved.
//

import Foundation
import UIKit


class TabController : UITabBarController {
    override func viewDidLoad() {
        for item in (self.tabBar.items as [UITabBarItem]!){
            item.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
        }
    }
    
    
}