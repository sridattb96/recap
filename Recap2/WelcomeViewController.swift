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
    
    var college_name = NSUserDefaults.standardUserDefaults().objectForKey("college_name")
    
    var api_url = "http://localhost:8000/api/storeUserInfo"
    
    @IBAction func submitButton(sender: AnyObject) {
        
        //do http request to store all user data up to this point
        
        let url = NSURL(string: api_url)
        let request = NSURLRequest(URL: url!, cachePolicy: .ReloadIgnoringLocalAndRemoteCacheData, timeoutInterval: 5.0)
        let session = NSURLSession.sharedSession()
        session.dataTaskWithRequest(request, completionHandler: {(data, response, error) in
            print(data)
            print(response)
            print(error)
        }).resume()
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

