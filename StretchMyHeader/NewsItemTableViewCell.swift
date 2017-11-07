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
    
    var newsItem: NewsItem? {
        didSet {
            if let item = newsItem {
                categoryLabel.text = item.category.toString()
                categoryLabel.textColor = item.category.getCategoryColor()
                headlineLabel.text = item.headline
            } else {
                categoryLabel.text = nil
                headlineLabel.text = nil
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
