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
    
    private let hats = [
        Product(title: "hat01", price: "$18", imageName: "hat01.png"),
        Product(title: "h1t02", price: "$22", imageName: "hat02.png"),
        Product(title: "hat03", price: "$18", imageName: "hat03.png"),
        Product(title: "h1t04", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Hoodie01", price: "32", imageName: "hoodies01.png"),
        Product(title: "Hoodie02", price: "32", imageName: "hoodies02.png"),
        Product(title: "Hoodie03", price: "32", imageName: "hoodies03.png"),
        Product(title: "Hoodie04", price: "32", imageName: "hoodies04.png")
    ]
    
    private let shirts = [
        Product(title: "shirt01", price: "$18", imageName: "shirt01.png"),
        Product(title: "shirt02", price: "$19", imageName: "shirt02.png"),
        Product(title: "shirt03", price: "$18", imageName: "shirt03.png"),
        Product(title: "shirt04", price: "$18", imageName: "shirt04.png"),
        Product(title: "shirt05", price: "$18", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    func getCategories() -> [Category]{
        return categories
    }
    
    func getProduct(title: String) -> [Product]{
        func getHats() ->[Product]{
            return hats
        }
        func getHodies()->[Product]{
            return hoodies
        }
        func getShirts()->[Product]{
            return shirts
        }
        func getDigitalGoods()->[Product]{
            return digitalGoods
        }
        
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
}
