//
//  StockRatingViewController.swift
//  StockDetails
//
//  Created by Rahul Shukla on 2/27/22.
//

import UIKit
import SwiftyJSON
import SwiftSpinner
import Alamofire

class StockRatingViewController: UIViewController {

    @IBOutlet weak var lblStock: UILabel!
    @IBOutlet weak var txtStock: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func getStockDetails(_ sender: Any) {
        
        guard let symbol = txtStock.text else { return }
                
                let url = "\(stockRating)\(symbol.uppercased())?apikey=\(apikey)"
                
                SwiftSpinner.show("Getting Stock Value for \(symbol)")
                        AF.request(url).responseJSON { response in
                            SwiftSpinner.hide(nil)
                            if response.error != nil {
                                print(response.error!)
                                return
                            }
    
                            let stocks = JSON(response.data!).array
                            
                            guard let stock = stocks!.first else { return}
                            
                            //print(stock)
                            let details = StockRating()
                            details.symbol = stock["symbol"].stringValue
                            details.date = stock["date"].stringValue
                            details.rating = stock["rating"].stringValue
                            
                            details.ratingScore = stock["ratingScore"].intValue
                            details.ratingRecommendation = stock["ratingRecommendation"].stringValue
                            details.ratingDetailsDCFScore = stock["ratingDetailsDCFScore"].intValue
                            details.ratingDetailsDCFRecommendation = stock["ratingDetailsDCFRecommendation"].stringValue
                            details.ratingDetailsROEScore = stock["ratingDetailsROEScore"].intValue
                            details.ratingDetailsROERecommendation = stock["ratingDetailsROERecommendation"].stringValue
                            details.ratingDetailsROAScore = stock["ratingDetailsROAScore"].intValue
                            details.ratingDetailsROARecommendation = stock["ratingDetailsROARecommendation"].stringValue
                            details.ratingDetailsDEScore = stock["ratingDetailsDEScore"].intValue
                            details.ratingDetailsDERecommendation = stock["ratingDetailsDERecommendation"].stringValue
                            details.ratingDetailsPEScore = stock["ratingDetailsPEScore"].intValue
                            details.ratingDetailsPERecommendation = stock["ratingDetailsPERecommendation"].stringValue
                            details.ratingDetailsPBScore = stock["ratingDetailsPBScore"].intValue
                            details.ratingDetailsPBRecommendation = stock["ratingDetailsPBRecommendation"].stringValue
                            
                            self.lblStock.text = "Stock Name: \(details.symbol), \(details.date)  ,\(details.rating) , \(details.ratingScore)"
                            
                           
    }
    

}
}
