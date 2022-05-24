//
//  FruitCell.swift
//  FruitsApp
//
//  Created by Tihomir RAdeff on 30.03.22.
//

import UIKit

class FruitCell: UITableViewCell {
    
    @IBOutlet weak var fruitImage: UIImageView!
    @IBOutlet weak var fruitLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
