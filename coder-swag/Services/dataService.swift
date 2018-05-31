//
//  dataService.swift
//  coder-swag
//
//  Created by Jamil Jalal on 5/31/18.
//  Copyright © 2018 Jamil Jalal. All rights reserved.
//

import Foundation

class dataService { //57
    static let instance = dataService() // We created just one copy in the memory. DataService has many copies, but we wanr the same or original copy, so we can access it and use it throught this class.
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    func getCategories() -> [Category]{
        return categories
    }
}
