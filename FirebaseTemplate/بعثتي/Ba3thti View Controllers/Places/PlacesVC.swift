//
//  PlacesVC.swift
//  بعثتي
//
//  Created by ghadeer alqattan on 7/17/20.
//  Copyright © 2020 GeeCodes. All rights reserved.
//

import UIKit



class PlacesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
// MARK: - Setting up Table View
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryChosen.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "placesCell") as! PlacesCell
        
        cell.namePlace.text = countryChosen[indexPath.row].placeName
        cell.placeDescription.text = countryChosen[indexPath.row].description
        cell.imgPlace.image = countryChosen[indexPath.row].placeImg
        
        return cell
    }
    
    
   
var countryChosen : [PlacesToGo] = selectedCountry.placesList

    
    
    @IBOutlet weak var titlePlaces: UILabel!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
       tableView.dataSource = self
       tableView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtn(_ sender: Any) {
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
