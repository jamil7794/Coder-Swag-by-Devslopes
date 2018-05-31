//
//  Category.swift
//  coder-swag
//
//  Created by Jamil Jalal on 5/31/18.
//  Copyright © 2018 Jamil Jalal. All rights reserved.
//

import Foundation

struct Category{
    private(set) public var title: String
    private(set) var imageName: String
    
    init(title: String, imageName: String){
        self.title = title//57
        self.imageName = imageName//57
    }
}
