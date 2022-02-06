//
//  TableViewCell.swift
//  TableViewControllorXib
//
//  Created by Rahul Shukla on 2/6/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var lblView: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
