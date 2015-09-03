//
//  CourseDetailViewController.swift
//  Recap2
//
//  Created by Sridatt Bhamidipati on 8/30/15.
//  Copyright © 2015 SRI. All rights reserved.
//

import Foundation
import UIKit

class CourseDetailViewController: UIViewController {
    
    @IBOutlet weak var courseName: UILabel?
    @IBOutlet weak var professorName: UILabel?
    @IBOutlet weak var courseIcon: UIImageView?
    @IBOutlet weak var missedButton: UIButton!
    
    var courseNameText: String?
    var professorNameText: String?
    var CRNText: String?
    
    let color = Colors()
    
    @IBAction func missedClass(sender: AnyObject) {
        
        print("you missed \(courseName!.text)! CRN: \(CRNText)")
        missedButton.layer.backgroundColor = color.getMainColor().CGColor
        missedButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        missedButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Highlighted)
        missedButton.setTitle("Pending Recap...", forState: UIControlState.Normal)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = courseNameText
        
        //customize button
        missedButton.layer.borderColor = color.getMainColor().CGColor
        missedButton.backgroundColor = UIColor.clearColor()
        missedButton.layer.cornerRadius = 5
        missedButton.layer.borderWidth = 1

        missedButton.setTitleColor(color.getMainColor(), forState: UIControlState.Normal)
        missedButton.setTitleColor(color.getMainColor(), forState: UIControlState.Highlighted)
        
        self.navigationController!.navigationBar.barTintColor = color.getMainColor()
        self.navigationController!.navigationBar.tintColor = UIColor.whiteColor()
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
        
        courseName?.text = courseNameText
        professorName?.text = professorNameText
        
        
    }
}