//
//  ProfileVC.swift
//  FirebaseTemplate
//
//  Created by ghadeer alqattan on 7/19/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {
    
    var userInfo : User!
    
    
    
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var profileEmail: UILabel!
    @IBOutlet weak var profileBirthdate: UILabel!
    @IBOutlet weak var profileGender: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    // MARK: - Bringing user data to profile
        
        Networking.getSingleDocument("users/\(Networking.getUserId()!)", success: { (useR: User) in
            self.userInfo = useR
            print(self.userInfo)
            self.fullName.text = "\(self.userInfo.firstName) \(self.userInfo.lastName)"
            self.profileEmail.text = self.userInfo.email
            self.profileBirthdate.text = self.userInfo.birthdate
            self.profileGender.text = self.userInfo.gender
            
        }) { (err) in
            print(err)
        }
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
