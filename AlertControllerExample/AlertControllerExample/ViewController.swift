//
//  ViewController.swift
//  AlertControllerExample
//
//  Created by Rahul Shukla on 2/27/22.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var lbltext: UILabel!
    
    @IBAction func pressMe(_ sender: Any) {
        
        
        var txtField: UITextField?
        
        let alertController = UIAlertController(title: "Sample Alert Controller", message: "Message", preferredStyle: .alert)
        
        let OKButton = UIAlertAction(title: "OK", style: .default) { action in
            print("OK Button pressed")
            self.lbltext.text = txtField?.text
        }
        
        let cancelButton = UIAlertAction   (title: "Cancel", style: .cancel){ action in
            print("Cancel Button Pressed")
        }
        
        
        alertController.addAction(OKButton)
        alertController.addAction(cancelButton)
        
        alertController.addTextField { lbltext in
            lbltext.placeholder = "Type SomeThing"
            txtField = lbltext
            
            
            //let text = self.lbltext.text
            //self.lbltext.text = lbltext.text
        }
        
        self.present(alertController, animated: true, completion: nil)
}
}

