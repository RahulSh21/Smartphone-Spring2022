//
//  SecondViewController.swift
//  TwoViewController
//
//  Created by Rahul Shukla on 2/14/22.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbldata.text = dataStr

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var lbldata: UILabel!
    
    var dataStr = ""
    
    @IBAction func goBack(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
}
