//
//  ViewController.swift
//  IndianDishes
//
//  Created by Rahul Shukla on 2/3/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
   
    let images = ["Images00001", "Images00002", "Images00003", "Images00004", "Images00005", "Images00006", "Images00007", "Images00008", "Images00009", "Images00010"]


    let imageNames = ["Bhelpuri" , "Veg biryani" , "Paneer butter masala" , "Samosa chaat" , "Pav bhaji", "Navaratan korma", "Bhindi masala", "Veg Pulao", "Pani puri", "Malai Kofta"]

    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!TableViewCell
               cell.imgView.image = UIImage(named: images[indexPath.row])
               cell.lblCell.text = imageNames[indexPath.row]
       
        return cell
    }

}

