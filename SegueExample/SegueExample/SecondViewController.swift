//
//  SecondViewController.swift
//  SegueExample
//
//  Created by Rahul Shukla on 2/6/22.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        lblwelcome.text = welcomeStr //this will load Data from previous screen
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var lblwelcome: UILabel!
    var welcomeStr = ""
    
    @IBAction func goBack(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
