//
//  ViewController.swift
//  TwoViewController
//
//  Created by Rahul Shukla on 2/13/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtData: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToSecondVC"{
            
            let secondVC = segue.destination as! SecondViewController
            
            secondVC.dataStr = "Your Entered Data is:  \(txtData.text!)"
        }
    }
    
    @IBAction func toSecondVC(_ sender: Any) {
        performSegue(withIdentifier: "segueToSecondVC", sender: self)
    }
    
    
}

