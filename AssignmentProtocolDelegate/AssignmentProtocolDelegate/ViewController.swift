//
//  ViewController.swift
//  AssignmentProtocolDelegate
//
//  Created by Rahul Shukla on 2/23/22.
//

import UIKit

class ViewController: UIViewController, firstandLastNameDelegate {
    
    
    

    @IBOutlet weak var lblWelcome: UILabel!
    @IBOutlet weak var lblLastName: UILabel!
    @IBOutlet weak var lblFirstName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func GetName(_ sender: Any) {
        performSegue(withIdentifier: "segueSecond", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "segueSecond" {
                let getNameVC = segue.destination as! proflieViewController
                guard let firstName = lblFirstName.text else {return}
                guard let lastName = lblLastName.text else {return}

                getNameVC.firstName = firstName
                getNameVC.lastName = lastName
                
                getNameVC.firstandLastNameDelegate = self
            }
        }
    
    func firstandSecondName(firstName: String, lastName: String) {
        lblFirstName.text = firstName
        lblLastName.text = lastName
    }
    
        
        func welcomeText(welcomeText: String) {
            lblWelcome.text = welcomeText
        }
       
}

