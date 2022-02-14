//
//  ViewController.swift
//  Notification
//
//  Created by Rahul Shukla on 2/13/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblLastName: UILabel!
    @IBOutlet weak var lblFirstName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToProfile(_ sender: Any) {
        performSegue(withIdentifier: "segueProfile", sender: self)
    }
    
}

