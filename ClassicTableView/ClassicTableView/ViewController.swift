//
//  ViewController.swift
//  ClassicTableView
//
//  Created by Rahul Shukla on 1/28/22.
//

import UIKit

/*
 Steps
 1. Add a Table view to story board
 2. Add a Table view cell to the Table View
 3. Create Identifier for table view cell and call it "cell"
 4. Create outlet of tableview to code call the table view as "tblview"
 5. Add protocols UITableViewDelegate, UITableViewDatasource, to the class
 6. Add fuction for table view numberofRowInSection and cellForRowAt
 7.in view did load add tblView.Delegate = self and tblView.Datasource = self
 8. Create an array
 
 */

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let arr = ["Mark", "Bill", "Peter", "John", "Tom"]

    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }


}

