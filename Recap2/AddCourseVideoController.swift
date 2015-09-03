//
//  AddCourseVideoController.swift
//  Recap2
//
//  Created by Sridatt Bhamidipati on 8/30/15.
//  Copyright © 2015 SRI. All rights reserved.
//

import Foundation
import UIKit
import SwiftRequest

class AddCourseViewController: UIViewController {
    
    var swiftRequest = SwiftRequest()
    var serverApiRoot:String = "http://localhost:8000/api"
    
    @IBOutlet weak var courseCRN: UITextField?
    @IBOutlet weak var courseName: UITextField?
    @IBOutlet weak var courseProfessor: UITextField?
    
    @IBOutlet weak var scienceView: UIView!
    @IBOutlet weak var engView: UIView!
    @IBOutlet weak var artView: UIView!
    @IBOutlet weak var humView: UIView!
    @IBOutlet weak var sportsView: UIView!
    @IBOutlet weak var businessView: UIView!
    
    @IBOutlet weak var scienceText: UILabel!
    @IBOutlet weak var engText: UILabel!
    @IBOutlet weak var artText: UILabel!
    @IBOutlet weak var humText: UILabel!
    @IBOutlet weak var sportsText: UILabel!
    @IBOutlet weak var businessText: UILabel!
    
    var categoryViewArr = [UIView]()
    var categoryTextArr = [UILabel]()
    
    let color = Colors()
    
    @IBAction func cancelButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func doneButton(sender: AnyObject) {
        
        // saves course in nsuserdefaults
        let ud = NSUserDefaults.standardUserDefaults()
        
        let course = Course()
        if let crn = self.courseCRN?.text {
            course.CRN = crn;
        }
        if let name = self.courseName?.text {
            course.Name = name;
        }
        if let prof = self.courseProfessor?.text {
            course.Professor = prof;
        }
        
        var courses: NSMutableArray;
        
        if let data = ud.objectForKey("courses") as? NSData {
            courses = NSKeyedUnarchiver.unarchiveObjectWithData(data) as! NSMutableArray
        } else {
            courses = [];
        }
        
        courses.addObject(course)
        let data = NSKeyedArchiver.archivedDataWithRootObject(courses)
        ud.setObject(data, forKey: "courses")
        
        // api to save course in db
        let courseObj = [
            "CRN": course.CRN!,
            "name": course.Name!,
            "professor": course.Professor!,
            "fbId": NSUserDefaults.standardUserDefaults().objectForKey("fb_id") as! String,
            "collegeId": "ucdavis"
        ]
        
        swiftRequest.post(serverApiRoot + "/createCourse", data: courseObj, callback: {err, response, body in
            if( err == nil ) {
                print(body)
            }
        })
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "DismissKeyboard")
        view.addGestureRecognizer(tap)
        
        categoryViewArr = [self.scienceView, self.engView, self.artView, self.humView, self.sportsView, self.businessView]
        categoryTextArr = [scienceText, engText, artText, humText, sportsText, businessText]
        
        categoryViewArr[0].layer.backgroundColor = color.getMainColor().CGColor
        categoryTextArr[0].textColor = UIColor.whiteColor()
        
        let categoryTap = UITapGestureRecognizer(target: self, action: Selector("chooseCategory:"))
        //categoryTap.delegate = self;
        
        for i in 1..<categoryViewArr.count
        {
            categoryViewArr[i].layer.borderWidth = 1.0
            categoryViewArr[i].layer.borderColor = color.getMainColor().CGColor
            categoryViewArr[i].addGestureRecognizer(categoryTap)
            categoryTextArr[i].textColor = color.getMainColor()
        }
        
        
    }
    
    func chooseCategory(sender: UITapGestureRecognizer){
        print(sender)
    }
    
    func DismissKeyboard(){
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

}