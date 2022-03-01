//
//  StockViewController.swift
//  NailStock
//
//  Created by Rahul Shukla on 2/20/22.
//

import UIKit
import SwiftyJSON
import SwiftSpinner
import Alamofire


class StockViewController: UIViewController {
    @IBOutlet weak var txtStock: UITextField!
    @IBOutlet weak var lblStock: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    @IBAction func getStock(_ sender: Any) {
        
        guard let symbol = txtStock.text else { return }
        
        let url = "\(shortQuoteURL)\(symbol.uppercased())?apikey=\(apiKey)"
        
        SwiftSpinner.show("Getting Stock Value for \(symbol)")
                AF.request(url).responseJSON { response in
                    SwiftSpinner.hide(nil)
                    if response.error != nil {
                        print(response.error!)
                        return
                    }
                    // If I am here then I have got the data
                    
                    let stocks = JSON(response.data!).array
                    
                    guard let stock = stocks!.first else { return}
                    
                    print(stock)
                    let quote = QuoteShort()
                    quote.symbol = stock["symbol"].stringValue
                    quote.price = stock["price"].floatValue
                    quote.volume = stock["volume"].intValue
                    
                    self.lblStock.text = "\(quote.symbol) : \(quote.price)$ \(quote.volume) "

                    
                }
                

        
    }
}
