//
//  Product.swift
//  coder-swag
//
//  Created by Jamil Jalal on 6/3/18.
//  Copyright © 2018 Jamil Jalal. All rights reserved.
//

import Foundation
struct Product{
    private(set) var title: String
    private(set) var price: String
    private(set) var imageName: String
    
    init(title: String, price: String, imageName: String){
        self.title = title
        self.price = price
        self.imageName = imageName
    }
    
    
}
