//
//  WelcomeViewController.swift
//  Recap2
//
//  Created by Sridatt Bhamidipati on 8/30/15.
//  Copyright © 2015 SRI. All rights reserved.
//

import Foundation
import UIKit
import SwiftRequest

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeMsg: UILabel!
    @IBOutlet weak var selectedCollege: UILabel!
    
    var swiftRequest = SwiftRequest()
    var serverApiRoot = "http://localhost:8000/api"
    
    @IBAction func submitButton(sender: AnyObject) {
        
        //do http request to store all user data up to this point
        
//        swiftRequest.get("http://news.ycombinator.com", callback: {err, response, body in
//            if( err == nil ) {
//                println(body)
//            }
//        })
        
        let data = [
            "name" : NSUserDefaults.standardUserDefaults().objectForKey("name") as! String,
            "fbid" : NSUserDefaults.standardUserDefaults().objectForKey("fb_id") as! String,
            "collegeId" : "ucdavis",
            "email": NSUserDefaults.standardUserDefaults().objectForKey("email") as! String,
            "picture": "hello.jpg"
        ]
        
        swiftRequest.post(serverApiRoot + "/createUser", data: data , callback: {err, response, body in
            if( err == nil ) {
                print(body)
            }
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let first_name = NSUserDefaults.standardUserDefaults().objectForKey("first_name"){
            welcomeMsg.text = "Welcome, \(first_name  as! String )!"
        }
        
        
        if let college_name = NSUserDefaults.standardUserDefaults().objectForKey("college_name") {
            selectedCollege.text = college_name as? String
        }
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
        if let college_name = NSUserDefaults.standardUserDefaults().objectForKey("college_name") {
            selectedCollege.text = college_name as? String
        }
    }
    
    override func didReceiveMemoryWarning() {
        
    }
}

