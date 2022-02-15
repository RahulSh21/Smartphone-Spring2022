//
//  IndianDishesTableViewCell.swift
//  DishPhotoWithXibFile
//
//  Created by Rahul Shukla on 2/15/22.
//

import UIKit

class IndianDishesTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var lblImage: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
