//
//  MainCountryVC.swift
//  بعثتي
//
//  Created by ghadeer alqattan on 7/15/20.
//  Copyright © 2020 GeeCodes. All rights reserved.
//

import UIKit

class MainCountryVC: UIViewController {

    @IBOutlet weak var countryMapBg: UIImageView!
    @IBOutlet weak var mentorLbl: UILabel!
    @IBOutlet weak var majorLbl: UILabel!
    @IBOutlet weak var placesToGoLbl: UILabel!
    @IBOutlet weak var culturalOfficeLbl: UILabel!
    @IBOutlet weak var restaurantLbl: UILabel!
    
    var dataSetReciever: country!
    var majorReciever: allMajors!
   // var mapBackgrounds = ["us map", "uk map", "ireland map", "canada map"]
    var imageNM: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        let loadImage = UserDefaults.standard.string(forKey: "bg") ?? ""
        countryMapBg.image = UIImage(named: loadImage)
        
        
        
        print("😳😥\(dataSetReciever)")
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func backbTN(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func ifTapped(_ sender: UIButton) {
        var segue = ""
        var data: Any?
        switch sender.tag {
        case 0:
            segue = "toMentors"
            data = dataSetReciever.studentList

        case 1:
            segue = "toMajors"
            data = dataSetReciever.majorsList

        case 2:
            segue = "toPlaces"
            data = dataSetReciever.placesList

        case 3:
            segue = "toOffice"
            data = dataSetReciever.officeList
       
        case 4:
            segue = "toRestaurants"
            data = dataSetReciever.foodList
            
        default:
            print("Data not found")
        }
        performSegue(withIdentifier: segue, sender: data)
    
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toMajors"{
            let vc = segue.destination as! MajorsVC
            vc.selectedMajor = majorReciever!
//        } else if segue.identifier == "toPlaces"{
//            let vc = segue.destination as! PlacesVC
//        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    

}
}
}
