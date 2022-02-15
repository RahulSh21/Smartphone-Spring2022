//
//  ViewController.swift
//  DishPhotoWithXibFile
//
//  Created by Rahul Shukla on 2/15/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let images = ["Images00001", "Images00002", "Images00003", "Images00004", "Images00005", "Images00006", "Images00007", "Images00008", "Images00009", "Images00010"]


        let imageNames = ["Bhelpuri" , "Veg biryani" , "Paneer butter masala" , "Samosa chaat" , "Pav bhaji", "Navaratan korma", "Bhindi masala", "Veg Pulao", "Pani puri", "Malai Kofta"]

    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("IndianDishesTableViewCell", owner: self, options: nil)?.first as! IndianDishesTableViewCell
                     
        
        cell.imgView.image = UIImage(named: images[indexPath.row])
                      cell.lblImage.text = imageNames[indexPath.row]
              
               return cell
    }

}

