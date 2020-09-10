//
//  RegisterMentorVC.swift
//  بعثتي
//
//  Created by ghadeer alqattan on 7/17/20.
//  Copyright © 2020 GeeCodes. All rights reserved.
//

import UIKit
import Firebase
import CodableFirebase
import MessageUI

class RegisterMentorVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var nameMentorField: UITextField!
    @IBOutlet weak var universityField: UITextField!
    @IBOutlet weak var mentorMajorField: UITextField!
    @IBOutlet weak var mentorNumberField: UITextField!
    @IBOutlet weak var countryField: UITextField!
    @IBAction func registeredMentor(_ sender: Any) {
        
      
        let nameMentor = nameMentorField.text!
        let mentorUni = universityField.text!
        let mentorMajor = mentorMajorField.text!
        let mentorNumber = mentorNumberField.text!
        let countryMentor = countryField.text!
        
        let studentMentor = StudentMentor(name: nameMentor, university: mentorUni, major: mentorMajor, mobileNumber: mentorNumber, countryNamee: countryMentor)
        
//        Networking.createItem(studentMentor, inCollection: "mentors"){
//             print("Successfully added student mentor")
//
//        }
       
        dismiss(animated: true, completion: nil)
    }
  
        let countriess = ["United Kingdom", "United States of America", "Ireland", "Canada"]
        var countryPickerView = UIPickerView()
     
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countryPickerView.delegate = self
        countryPickerView.dataSource = self
        countryField.inputView = countryPickerView
        countryField.placeholder = "Country"
    }

        
        // Do any additional setup after loading the view.
    

// MARK: - Country Picker View
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countriess.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countriess[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        countryField.text = countriess[row]
        countryField.resignFirstResponder()
        
        // MARK: - toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()

        //MARK: - assign tool bar & picker
        countryField.inputAccessoryView = toolbar
        countryField.inputView = countryPickerView
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
