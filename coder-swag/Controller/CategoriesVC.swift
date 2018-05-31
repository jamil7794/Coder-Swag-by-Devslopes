//
//  ViewController.swift
//  coder-swag
//
//  Created by Jamil Jalal on 5/28/18.
//  Copyright © 2018 Jamil Jalal. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
        // We are trying to let the tableview know that this is the main class they should use thats why we imported
        // UITableViewDataSource, UITableViewDelegate on this class to use it
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataService.instance.getCategories().count //57
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = dataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
            // tableView.dequeueReusableCell is a way that we can use the same cell over and over again. We update the current cell by indexPath.row. The number of index path keeps increasing until it is reached the end og the array. We update the cell with a new category 
        }else{
            return CategoryCell()
        }
    }
    
    
}

