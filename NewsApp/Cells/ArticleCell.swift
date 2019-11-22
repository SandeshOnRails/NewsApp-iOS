//
//  ArticleCell.swift
//  NewsApp
//
//  Created by Sandesh Basnet on 11/21/19.
//  Copyright © 2019 Sandesh Basnet. All rights reserved.
//

import UIKit

class ArticleCell: UITableViewCell {
    
    @IBOutlet weak var title: UILabel!
    
    
    @IBOutlet weak var articleDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
