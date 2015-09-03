//
//  UserViewController.swift
//  Recap2
//
//  Created by Sridatt Bhamidipati on 8/30/15.
//  Copyright © 2015 SRI. All rights reserved.
//

import Foundation
import UIKit

class UserViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userCollege: UILabel!
    @IBOutlet weak var userPicture: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    var userNameText: String?
    var userCollegeText: String?
    var myCourses: NSMutableArray = [];
    
    let color = Colors()
    
    override func viewDidLoad() {

        userName.text = NSUserDefaults.standardUserDefaults().objectForKey("name") as? String
        userCollege.text = NSUserDefaults.standardUserDefaults().objectForKey("college_name") as? String
        
        if let data = NSUserDefaults.standardUserDefaults().objectForKey("courses") as? NSData {
            self.myCourses = NSKeyedUnarchiver.unarchiveObjectWithData(data) as! NSMutableArray
        }
        
        tableView.delegate = self
        tableView.dataSource = self

        tableView.registerNib(UINib(nibName: "CourseTableViewCell", bundle: nil), forCellReuseIdentifier: "CourseIdentifier")
        
        //UIView().backgroundColor = UIColor.grayColor()
        tableView.tableFooterView = UIView()
        
        self.navigationController!.navigationBar.barTintColor = color.getMainColor()
        self.navigationController!.navigationBar.tintColor = UIColor.whiteColor()
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]

        userName.textColor = color.getMainColor()

    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        if let data = NSUserDefaults.standardUserDefaults().objectForKey("courses") as? NSData {
            self.myCourses = NSKeyedUnarchiver.unarchiveObjectWithData(data) as! NSMutableArray
        }
        
        tableView.reloadData()
    }
    
    //tableview delegate & datasource functions
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCourses.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        var vc = self.storyboard!.instantiateViewControllerWithIdentifier("CourseDetail") as! CourseDetailViewController
        
//        print(course.Name)
//        print(course.Professor)
        
        let course: Course = self.myCourses.objectAtIndex(indexPath.row) as! Course;
        vc.courseNameText = course.Name
        vc.professorNameText = course.Professor
        vc.CRNText = course.CRN
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CourseIdentifier") as? CourseTableViewCell
        
        let course: Course = self.myCourses.objectAtIndex(indexPath.row) as! Course;
        cell?.courseName.text = course.Name
        cell?.professorName.text = course.Professor
        
        return cell!
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            // handle delete (by removing the data from your array and updating the tableview)
            
            self.myCourses.removeObjectAtIndex(indexPath.row)
            
            let data = NSKeyedArchiver.archivedDataWithRootObject(self.myCourses)
            NSUserDefaults.standardUserDefaults().setObject(data, forKey: "courses")
            
            tableView.reloadData()

        }
    }
}


