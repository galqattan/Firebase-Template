//
//  LoginVC.swift
//  بعثتي
//
//  Created by ghadeer alqattan on 7/12/20.
//  Copyright © 2020 GeeCodes. All rights reserved.
//

import UIKit

class SignVC: UIViewController {

// change text colow w code
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var passTxtField: UITextField!
    @IBOutlet weak var forgotPass: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
  // MARK: - Alert Controller
    
    @IBAction func signBtn(_ sender: Any) {
    
    if
          emailTxtField.text ==  "" || passTxtField.text == ""  {
                     let alertController = UIAlertController(title: nil, message: "Fill out all of your information to sign in.", preferredStyle: .alert)
                     let restartAction = UIAlertAction(title: "Done", style: .default) { (alert) in}
                     alertController.addAction(restartAction)
                    present(alertController, animated: true, completion: nil)
    } else if
            emailTxtField.text ==  emailTxtField.text || passTxtField.text == passTxtField.text {
            
            
        
            performSegue(withIdentifier: "sign", sender: nil)
            
        
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
}
