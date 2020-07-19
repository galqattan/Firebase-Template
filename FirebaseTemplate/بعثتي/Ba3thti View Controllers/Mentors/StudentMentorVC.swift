//
//  StudentMentorVC.swift
//  بعثتي
//
//  Created by ghadeer alqattan on 7/16/20.
//  Copyright © 2020 GeeCodes. All rights reserved.
//

import UIKit

class StudentMentorVC: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    
    var chosenCountry : [StudentMentor] = selectedCountry.studentList
    var tempList : [StudentMentor] = []
    var category : String!
 
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var mentorTitle: UILabel!
    @IBOutlet weak var backBtn: UIButton!
    @IBAction func addMentor(_ sender: Any) {
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

        tableView.dataSource = self
        tableView.delegate = self
        
        guard let category = category
            else {
                return
        }
        Networking.getListOf(COLLECTION_NAME: "mentors") { (mymentors: [StudentMentor]) in
            self.tempList = mymentors.filter{$0.countryImg == category}
            self.tableView.reloadData()

        }

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func backbtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
// MARK: - Setting up Table View
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return chosenCountry.count
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mentorcell") as! MentorCell
        cell.mentorName.text = chosenCountry[indexPath.row].name
        cell.mentorUnnii.text = chosenCountry[indexPath.row].university
        cell.mentorrMajoor.text = chosenCountry[indexPath.row].major
        cell.phoneeNumberr.text = chosenCountry[indexPath.row].mobileNumber
        cell.countryyyName.text = chosenCountry[indexPath.row].countryNamee
        cell.countryImg.image = UIImage(named: chosenCountry[indexPath.row].countryImg ?? "")

        
        return cell
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
