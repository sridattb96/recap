//
//  SchoolViewController.swift
//  Recap2
//
//  Created by Sridatt Bhamidipati on 8/30/15.
//  Copyright © 2015 SRI. All rights reserved.
//

import Foundation
import UIKit

class SchoolViewController: UITableViewController, UISearchBarDelegate, UISearchDisplayDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar?
    
    struct College {
        let id : String
        let name : String
    }
    
    var colleges = [College]()
    var filteredColleges = [College]();
    
    override func viewDidLoad() {
        super.viewDidLoad();

        self.tableView.delegate = self;
        self.tableView.dataSource = self;
    
        //populate from api call to database of schools
        self.colleges = [College(id: "0000001", name: "University of California, Davis"),
        College(id: "0000002", name: "University of California, Berkeley"),
        College(id: "0000003", name: "Stanford University"),
        College(id: "0000004", name: "San Jose State University")]
        
        self.tableView.reloadData()
        
    }
    
    func filterContentForSearchText(searchText: String){
        self.filteredColleges = self.colleges.filter({( college: College) -> Bool in
            let stringMatch = college.name.rangeOfString(searchText)
            return stringMatch != nil
        })
    }
    
    func searchDisplayController(controller: UISearchDisplayController, shouldReloadTableForSearchString searchString: String?) -> Bool {
        self.filterContentForSearchText(searchString!)
        return true
    }
    
    func searchDisplayController(controller: UISearchDisplayController, shouldReloadTableForSearchScope searchOption: Int) -> Bool {
        self.filterContentForSearchText(self.searchDisplayController!.searchBar.text!)
        return true
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.searchDisplayController!.searchResultsTableView {
            return self.filteredColleges.count
        } else {
            return colleges.count
        }
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        //set NSuserdefaults
        NSUserDefaults.standardUserDefaults().setObject(colleges[indexPath.row].name, forKey: "college_name");
        NSUserDefaults.standardUserDefaults().setObject(colleges[indexPath.row].id, forKey: "college_id");
        
        print("\(colleges[indexPath.row].name) selected")
        self.dismissViewControllerAnimated(true, completion: {});

    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = (tableView.dequeueReusableCellWithIdentifier("CollegeCell") as! UITableViewCell?)!

        var college: College;
        
        if tableView == self.searchDisplayController!.searchResultsTableView {
            college = filteredColleges[indexPath.row]
        } else {
            college = colleges[indexPath.row]
        }
        cell.textLabel?.text = college.name
        
        return cell
    }
    
}
