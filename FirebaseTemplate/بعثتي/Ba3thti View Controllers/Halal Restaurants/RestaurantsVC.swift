//
//  RestaurantsVC.swift
//  FirebaseTemplate
//
//  Created by ghadeer alqattan on 27/07/2020.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class RestaurantsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

// MARK: - Setting up Table View
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodChosen.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellsss") as! RestaurantsCell
        cell.accLabl.text = foodChosen[indexPath.row].instaAcc
          cell.pic1.image = foodChosen[indexPath.row].food1
          cell.pic2.image = foodChosen[indexPath.row].food2
          cell.pic3.image = foodChosen[indexPath.row].food3
    
        return cell
    }
    
    var foodChosen : [restaurants] = selectedCountry.foodList


    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
          tableView.dataSource = self
          tableView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backbtn(_ sender: Any) {
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
