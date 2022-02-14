//
//  ProfileViewController.swift
//  Notification
//
//  Created by Rahul Shukla on 2/13/22.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var txtLastNmae: UITextField!
    @IBOutlet weak var txtFirstNmae: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func saveName(_ sender: Any) {
        
        guard let firstName = txtFirstNmae.text else {return}
        guard let lastName = txtLastNmae.text else {return}
        
        let name = Notification.Name(nameNotification)
        let firstAndLastNmae: [String : String] = [
                                                    "FirstName " : firstName,
                                                    "Last Name"  : lastName
                                                    ]
        
    }
    

}
