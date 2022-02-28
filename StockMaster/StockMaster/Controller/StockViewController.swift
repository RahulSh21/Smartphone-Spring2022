//
//  StockViewController.swift
//  StockMaster
//
//  Created by Rahul Shukla on 2/27/22.
//

import UIKit
import RealmSwift

class StockViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //print(Realm.Configuration.defaultConfiguration.fileURL?.path)

        // Do any additional setup after loading the view.
        
        
        loadStockValues()
    }
    

    @IBAction func AddDBAction(_ sender: Any) {
        
        let stock = StockShort()
        stock.symbol = "APPL"
        stock.price = 120.32
        stock.volume = 12385766986
        
        
        do{
            let realm = try Realm()
            
            try realm.write({
                realm.add(stock, update: .modified)
            })
        }catch{
            print("Error in Writing in data base")
        }
        
    }
    
    
    func loadStockValues(){
        do{
            let realm = try Realm()
            let stock = realm.objects(StockShort.self)
            
          //  print(stock)
            
            for stock in stock{
                print(stock.symbol)
            }
            
        }catch {
            print("Error while reading DB")
        }
    }
    
    func deleteStockFromDB(Stock : StockShort){
        
    }
    @IBAction func deleteTSLAStock(_ sender: Any) {
        
        let tsla = StockShort()
       
    }
    
    func getTslaStock() -> StockShort{
        do{
            let realm = try Realm()
            try realm.write({
                realm.delete(stock)
            })
            
        }catch{
            print("Unable to Delete Stock")
        }
    }
    @IBAction func addStockAction(_ sender: Any) {
        
        var txtField : UITextField?
        
        let alertController = UIAlertController
        
        let aletcontroller = UIAlertController(title: "ADD Stock", message: "", preferredStyle: .alert)
    
    
        let OKButton = UIAlertAction(title: "OK", style: .default){ action in
            
        }
    
    let cancelButton = UIAlertAction(title: "Cancel", style: .cancel){ action in
        
    }
        
        alertController.addAction(OKButton)
        aletcontroller.addAction(cancelButton)
        
    }
}


