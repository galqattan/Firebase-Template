//
//  MajorsDetailsVC.swift
//  بعثتي
//
//  Created by ghadeer alqattan on 7/16/20.
//  Copyright © 2020 GeeCodes. All rights reserved.
//

import UIKit

class MajorsDetailsVC: UIViewController {

     var chosenCountry : [Major] = selectedCountry.majorsList
    
    @IBOutlet weak var majorTitle: UILabel!
    @IBOutlet weak var majorDescription: UILabel!
    @IBOutlet weak var requirement: UILabel!
    @IBOutlet weak var gradeMajor: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        majorTitle.text = major.majorName
        majorDescription.text = major.description
        requirement.text = major.requirements
        gradeMajor.text = major.grade

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backbutton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
