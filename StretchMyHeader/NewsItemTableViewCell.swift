//
//  NewsItemTableViewCell.swift
//  StretchMyHeader
//
//  Created by Olga on 11/7/17.
//  Copyright © 2017 Olga Nesterova. All rights reserved.
//

import UIKit

class NewsItemTableViewCell: UITableViewCell {
    
    //MARK: Properties
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var headlineLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
