//
//  CellView.swift
//  MyTableViewProject
//
//  Created by Salman on 09/05/18.
//  Copyright © 2018 Salman. All rights reserved.
//

import UIKit

class CellView: UITableViewCell {

    @IBOutlet var myLabelView : UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
