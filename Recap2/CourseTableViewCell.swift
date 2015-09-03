//
//  CourseTableViewCell.swift
//  Recap2
//
//  Created by Sridatt Bhamidipati on 8/29/15.
//  Copyright © 2015 SRI. All rights reserved.
//

import UIKit

class CourseTableViewCell: UITableViewCell {

    @IBOutlet weak var courseName: UILabel!
    @IBOutlet weak var professorName: UILabel!
    @IBOutlet weak var courseIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
