//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Jamil Jalal on 5/29/18.
//  Copyright © 2018 Jamil Jalal. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell { //57
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category){ // 57 referencing category
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
        // Every Cell is different so we update each time we have a new title and a new image.
    }

}
