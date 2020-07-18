//
//  RegisterMentorVC.swift
//  بعثتي
//
//  Created by ghadeer alqattan on 7/17/20.
//  Copyright © 2020 GeeCodes. All rights reserved.
//

import UIKit

class RegisterMentorVC: UIViewController {
var whichCountry = "United Kingdom"

    @IBOutlet weak var nameMentorField: UITextField!
    @IBOutlet weak var universityField: UITextField!
    @IBOutlet weak var mentorMajorField: UITextField!
    @IBOutlet weak var mentorNumberField: UITextField!
    @IBOutlet weak var countryField: UITextField!
    @IBAction func registeredMentor(_ sender: Any) {
        var nameMentor = nameMentorField.text!
        var mentorUni = universityField.text!
        var mentorMajor = mentorMajorField.text!
        var mentorNumber = mentorNumberField.text!
        var descriptionMentor = mentorUni + mentorMajor + mentorNumber
     if whichCountry == "United Kingdom"{
            mentorsDataUK.append(StudentMentor(name: nameMentor, description: descriptionMentor, countryImg: UIImage(named: "England Btn")!))
                
            }
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
