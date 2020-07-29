//
//  RestaurantsCell.swift
//  FirebaseTemplate
//
//  Created by ghadeer alqattan on 27/07/2020.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class RestaurantsCell: UITableViewCell {
 
    
    @IBOutlet weak var backgrounddd: UIImageView!
    @IBOutlet weak var accLabl: UILabel!
    @IBOutlet weak var pic1: UIImageView!
    @IBOutlet weak var pic2: UIImageView!
    @IBOutlet weak var pic3: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        configureRadius()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureRadius(){
           pic1.layer.cornerRadius = 20
           pic2.layer.cornerRadius = 20
           pic3.layer.cornerRadius = 20

    }
}
