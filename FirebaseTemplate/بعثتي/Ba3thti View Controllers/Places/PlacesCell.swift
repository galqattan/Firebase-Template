//
//  PlacesCell.swift
//  بعثتي
//
//  Created by ghadeer alqattan on 7/17/20.
//  Copyright © 2020 GeeCodes. All rights reserved.
//

import UIKit

class PlacesCell: UITableViewCell {

    @IBOutlet weak var namePlace: UILabel!
    @IBOutlet weak var placeDescription: UILabel!
    @IBOutlet weak var imgPlace: UIImageView!
    @IBOutlet weak var placeBg: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
