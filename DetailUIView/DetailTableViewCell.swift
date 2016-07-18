//
//  DetailTableViewCell.swift
//  DetailUIView
//
//  Created by kvanaMini1 on 19/05/16.
//  Copyright © 2016 kvanaMini1. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {
    
    @IBOutlet weak var dateandtime: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var imgCell: UIImageView!
   
    
    
   override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
