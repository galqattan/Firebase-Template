//
//  MajorsVC.swift
//  بعثتي
//
//  Created by ghadeer alqattan on 7/16/20.
//  Copyright © 2020 GeeCodes. All rights reserved.
//

import UIKit

  var major : Major!
class MajorsVC: UIViewController {

    var selectedMajor : allMajors = allMajors(majors: [])
  

    override func viewDidLoad() {
        super.viewDidLoad()
        print(selectedMajor)
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    
    @IBAction func ifMajorTap(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            major = selectedMajor.majors[0]
        case 1:
            major = selectedMajor.majors[1]
        case 2:
            major = selectedMajor.majors[2]
        case 3:
            major = selectedMajor.majors[3]
        case 4:
            major = selectedMajor.majors[4]
        case 5:
            major = selectedMajor.majors[5]
        default:
         break
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
