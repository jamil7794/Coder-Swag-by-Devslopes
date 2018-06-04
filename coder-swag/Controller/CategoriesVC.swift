//
//  ViewController.swift
//  coder-swag
//
//  Created by Jamil Jalal on 5/28/18.
//  Copyright © 2018 Jamil Jalal. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
   // Core
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
    // Connecting to ProctVC..
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = dataService.instance.getCategories()[indexPath.row] // after selecting a caegory, data will be stored in this variable
        performSegue(withIdentifier: "ProductsVC", sender: category) // Identifier should be the destination VC and sender should be the category we selected so we could use later on.
    }
    // Connecting to ProductVC
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC{
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            assert(sender as? Category != nil) // Making sure that the program runs correctly without any Problems. Asserting it. My app requires that the assertion is type category thats why we use it. Guard is for any type

            productsVC.initProducts(category: sender as! Category) // Sender is the (c)ategory already in the system. We are implementing the sender here.
            
        }
    }
    
}

