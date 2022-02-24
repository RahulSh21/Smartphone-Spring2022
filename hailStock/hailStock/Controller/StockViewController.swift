//
//  StockViewController.swift
//  hailStock
//
//  Created by Rahul Shukla on 2/20/22.
//

import UIKit

class StockViewController: UIViewController {
    @IBOutlet weak var txtStock: UITextField!
    
    @IBOutlet weak var lblStockPrice: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func getStockPrice(_ sender: Any) {
        print("Iam here")
    }
    

}
