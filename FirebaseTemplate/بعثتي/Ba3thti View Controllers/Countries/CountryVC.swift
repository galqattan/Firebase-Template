//
//  countryVCViewController.swift
//  بعثتي
//
//  Created by ghadeer alqattan on 7/14/20.
//  Copyright © 2020 GeeCodes. All rights reserved.
//

import UIKit

var selectedCountry : country = country (country: "Ireland", officeList: kcoIreland, studentList: mentorsDataIreland, majorsList: majorsDataIreland, placesList: placesIreland)

var whichSender: Int!

class CountryVC: UIViewController {

    var selectedCountryMajor : allMajors!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ifProfileTap(_ sender: Any) {
        performSegue(withIdentifier: "profile", sender: nil)
    }
    

    @IBAction func ifCountryTap(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            selectedCountry = countryInfoUSA
            selectedCountryMajor = ghadeer[0]
            whichSender = 0
        case 1:
            selectedCountry = countryInfoUK
            selectedCountryMajor = ghadeer[1]
            whichSender = 1
        case 2:
            selectedCountry = countryInfoIreland
            selectedCountryMajor = ghadeer[2]
            whichSender = 2
        case 3:
            selectedCountry = countryInfoCanada
            selectedCountryMajor = ghadeer[3]
            whichSender = 3
        default:
            break
        }
        performSegue(withIdentifier: "countryDetails", sender: nil)

    }
    
    
    // MARK: - Navigation

     //In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "profile" {
            
        }
        if segue.identifier == "countryDetails" {
            let vC = segue.destination as! MainCountryVC
            vC.dataSetReciever = selectedCountry
            vC.majorReciever = selectedCountryMajor
            if whichSender == 0 {
                UserDefaults.standard.setValue("us map", forKey: "bg")
                vC.imageNM = "us map"
            } else if whichSender == 1{
                vC.imageNM = "uk map"
                UserDefaults.standard.setValue("uk map", forKey: "bg")
            } else if whichSender == 2{
                vC.imageNM = "ireland map"
                UserDefaults.standard.setValue("ireland map", forKey: "bg")
            } else if whichSender == 3{
                vC.imageNM = "canada map"
                UserDefaults.standard.setValue("canada map", forKey: "bg")
            }
        }
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
