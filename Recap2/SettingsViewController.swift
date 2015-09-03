//
//  SettingsViewController.swift
//  Recap2
//
//  Created by Sridatt Bhamidipati on 8/30/15.
//  Copyright © 2015 SRI. All rights reserved.
//

import Foundation
import UIKit

class SettingsViewController: UITableViewController {
    
    let color = Colors()
    
    @IBAction func doneButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController!.navigationBar.barTintColor = color.getMainColor()
        self.navigationController!.navigationBar.tintColor = UIColor.whiteColor()
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
    }
    
}
