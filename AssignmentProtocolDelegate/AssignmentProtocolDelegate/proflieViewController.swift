//
//  proflieViewController.swift
//  AssignmentProtocolDelegate
//
//  Created by Rahul Shukla on 2/23/22.
//

import UIKit

protocol firstandLastNameDelegate {
    func firstandSecondName(firstName: String, lastName: String)
}

class proflieViewController: UIViewController {

    var firstName : String?
    var lastName : String?
    
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtFirstName: UITextField!
    
    var firstandLastNameDelegate : firstandLastNameDelegate?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let firstName = firstName else {return}
        guard let lastName = lastName else {return}
                
        txtFirstName.text = firstName
        txtLastName.text = lastName
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func saveName(_ sender: Any) {
        
        guard let first = txtFirstName.text else {return }
                guard let last = txtLastName.text else {return }

               
                
                
        firstandLastNameDelegate?.firstandSecondName(firstName: first, lastName: last)
       // firstandLastNameDelegate?.firstandSecondName(welcomeText: "Welcome \(first), \(last)")
        
                self.navigationController?.popViewController(animated: true)
    }
    
}
