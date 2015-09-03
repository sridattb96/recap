//
//  Course.swift
//  Recap2
//
//  Created by Sridatt Bhamidipati on 9/1/15.
//  Copyright (c) 2015 SRI. All rights reserved.
//

import Foundation
import UIKit

class Course: NSObject, NSCoding {
    
    var CRN : String?
    var Name : String?
    var Professor : String?
    var Category : String?
    
    override init() {}
    
    required init(coder aDecoder: NSCoder) {
        if let CRN = aDecoder.decodeObjectForKey("CRN") as? String {
            self.CRN = CRN
        }
        if let Name = aDecoder.decodeObjectForKey("Name") as? String {
            self.Name = Name
        }
        if let Professor = aDecoder.decodeObjectForKey("Professor") as? String {
            self.Professor = Professor
        }
        if let Category = aDecoder.decodeObjectForKey("Category") as? String {
            self.Category = Category
        }
        
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        if let CRN = self.CRN {
            aCoder.encodeObject(CRN, forKey: "CRN")
        }
        if let Name = self.Name {
            aCoder.encodeObject(Name, forKey: "Name")
        }
        if let Professor = self.Professor {
            aCoder.encodeObject(Professor, forKey: "Professor")
        }
        if let Category = self.Category {
            aCoder.encodeObject(Category, forKey: "Category")
        }
    }
}