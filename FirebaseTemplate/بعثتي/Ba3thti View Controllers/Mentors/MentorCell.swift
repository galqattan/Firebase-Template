//
//  MentorCell.swift
//  بعثتي
//
//  Created by ghadeer alqattan on 7/16/20.
//  Copyright © 2020 GeeCodes. All rights reserved.
//

import UIKit

class MentorCell: UITableViewCell {

    @IBOutlet weak var mentorBg: UIImageView!
    @IBOutlet weak var mentorName: UILabel!
    @IBOutlet weak var mentorDescription: UILabel!
    @IBOutlet weak var countryImg: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setDetails(){
    }
}
