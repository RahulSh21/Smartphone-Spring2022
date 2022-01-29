//
//  TableViewController.swift
//  TableViewControllerExample
//
//  Created by Rahul Shukla on 1/28/22.
//

import UIKit

/*
 1. Remove View Controller from storyBorad and remove the code
 2. Add TableViewController tpo the StoryBoard and add "cell" as reusable identifier
 3.make the tableview as initial VC
 4. Add TableViewController Code file and map UI and Code File
 5. remove boiler plate
 
 
 
 
 */
class TableViewController: UITableViewController {

    let arr = ["Mark", "Bill", "John", "Peter"]
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

   

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
    

}
