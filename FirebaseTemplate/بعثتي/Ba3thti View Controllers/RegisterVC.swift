//
//  RegisterVC.swift
//  بعثتي
//
//  Created by ghadeer alqattan on 7/12/20.
//  Copyright © 2020 GeeCodes. All rights reserved.
//

import UIKit
import MessageUI

class RegisterVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var registerLbl: UILabel!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var confirmEmailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPassTextField: UITextField!
    @IBOutlet weak var genderLbl: UILabel!
    @IBOutlet weak var genderTextField: UITextField!
    @IBOutlet weak var birthDateLbl: UILabel!
    @IBOutlet weak var birthDate: UITextField!
    
    let gender = ["Female", "Male"]
    let datePicker = UIDatePicker()
    var genderPickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       createDatePicker()
 
      genderPickerView.delegate = self
      genderPickerView.dataSource = self
      genderTextField.inputView = genderPickerView
      genderTextField.textAlignment = .center
      genderTextField.placeholder = "Female / Male"

    }
    
    
    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
// MARK: - Birthdate Picker

    func createDatePicker () {
        birthDate.textAlignment = .center
        // MARK: - toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()

        // MARK: - bar button
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneBtn], animated: true)
        // MARK: - assign toolbar
        birthDate.inputAccessoryView = toolbar

        // MARK: - assign date picker to the text field
        birthDate.inputView = datePicker

        // MARK: - date picker mode
        datePicker.datePickerMode = .date

    }

    @objc func donePressed() {
        // MARK: - formatter
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none

        birthDate.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)

    }

    

// MARK: - Gender Picker View
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gender.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return gender[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        genderTextField.text = gender[row]
        genderTextField.resignFirstResponder()
        // MARK: - toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()

        // MARK: - bar button
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneBtn], animated: true)
        //MARK: - assign tool bar & picker
        genderTextField.inputAccessoryView = toolbar
        genderTextField.inputView = genderPickerView
    }
    
    
// MARK: - Alert Controller
        @IBAction func registerDone(_ sender: UIButton) {
            let firstName = firstNameTextField.text!
            let lastName = lastNameTextField.text!
            let email = emailTextField.text!
            let confirmEmail = confirmEmailTextField.text!
            let password = passwordTextField.text!
            let confirmPass = confirmPassTextField.text!
            let gender = genderTextField.text!
            let birthdate = birthDate.text!
            
            
            let usernameee = User(firstName: firstName, lastName: lastName, email: email, emailConfirm: confirmEmail, password: password, passwordConfirm: confirmPass, gender: gender, birthdate: birthdate)
            
            if validatePassword(password: password, confirmPass: confirmPass){
                       Networking.signUp(user: usernameee , password: password, success:  { uid in
                           // ✅ Success
                           print("You have signed up successfully")
                           self.performSegue(withIdentifier: "success", sender: nil)
                       }){
                           // ❌ Failed
                           self.errorMessage(message: "Couldn't sign in, make sure the email and password are correct")
                       }
                   }
                   else{
                       errorMessage(message: "Password are not matching!")
                   }
               }
               
    func validatePassword(password: String, confirmPass: String) -> Bool{
        return password == confirmPass
    }
            
            func errorMessage(message: String){
                let alertController = UIAlertController(title: "Error!", message: message , preferredStyle: .alert)
                let okAction = UIAlertAction(title: "Ok", style: .cancel)
                alertController.addAction(okAction)
                present(alertController, animated: true)
            }

            
         
    
    
    
    
    
            
//
//   if
//       firstNameTextField.text ==  "" || lastNameTextField.text == ""  || emailTextField.text == "" || confirmEmailTextField.text == "" || passwordTextField.text == "" || confirmPassTextField.text == "" || genderTextField.text == "" || birthDate.text == "" {
//                  let alertController = UIAlertController(title: nil, message: "Fill out all of your information to continue your registration.", preferredStyle: .alert)
//                  let restartAction = UIAlertAction(title: "Done", style: .default) { (alert) in}
//                  alertController.addAction(restartAction)
//                 present(alertController, animated: true, completion: nil)
//
//         performSegue(withIdentifier: "success", sender: nil)
//   } else if
//    firstNameTextField.text ==  firstNameTextField.text || lastNameTextField.text == lastNameTextField.text  || emailTextField.text == emailTextField.text || confirmEmailTextField.text == confirmPassTextField.text || passwordTextField.text == passwordTextField.text || confirmPassTextField.text == confirmPassTextField.text || genderTextField.text == genderTextField.text || birthDate.text == birthDate.text {
//
//   performSegue(withIdentifier: "success", sender: nil)
   
   
            }
        
   

  /*
// MARK: - Navigation
// In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      Get the new view controller using segue.destination.
      Pass the selected object to the new view controller.   }
//    */


