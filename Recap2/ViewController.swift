//
//  ViewController.swift
//  Recap2
//
//  Created by Sridatt Bhamidipati on 8/29/15.
//  Copyright © 2015 SRI. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class ViewController: UIViewController, FBSDKLoginButtonDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if FBSDKAccessToken.currentAccessToken() == nil {
            print("no one in logged in")
        }
        else {
            print("logged in")
        }
        
        let loginButton = FBSDKLoginButton();
        loginButton.readPermissions = ["public_profile", "email", "user_friends"]
        loginButton.center = self.view.center
        
        loginButton.delegate = self
        
        self.view.addSubview(loginButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //login delegate functions
    
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
        print(result.description)
        
        //get facebook info
        let namerequest = FBSDKGraphRequest(graphPath: "me?fields=first_name,last_name,name,picture,id,email", parameters: nil)
        namerequest.startWithCompletionHandler({
            (connection, result, error: NSError!) -> Void in
            if error == nil {
                //save into user defaults
                print("\(result)")

                NSUserDefaults.standardUserDefaults().setObject(result["name"], forKey: "name");
                NSUserDefaults.standardUserDefaults().setObject(result["first_name"], forKey: "first_name");
                NSUserDefaults.standardUserDefaults().setObject(result["last_name"], forKey: "last_name");
                NSUserDefaults.standardUserDefaults().setObject(result["id"], forKey: "fb_id");
                NSUserDefaults.standardUserDefaults().setObject(result["email"], forKey: "email");
                NSUserDefaults.standardUserDefaults().setObject(result["picture"], forKey: "picture");

                
            } else {
                print("\(error)")
            }
        })
        
        if error == nil {
            print("login complete")
            self.performSegueWithIdentifier("aboutRecap", sender: self)
        }
        else {
            print(error)
        }
    }
    
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
        print("user logged out")
    }
    
    
}

