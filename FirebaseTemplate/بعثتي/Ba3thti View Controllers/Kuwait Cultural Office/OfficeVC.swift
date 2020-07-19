//
//  OfficeVC.swift
//  بعثتي
//
//  Created by ghadeer alqattan on 7/17/20.
//  Copyright © 2020 GeeCodes. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class OfficeVC: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    let locationManager = CLLocationManager()
    
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var directionsBtn: UIButton!
    @IBOutlet weak var numberOffice: UILabel!
    @IBOutlet weak var openingTimes: UILabel!
    @IBOutlet weak var addressOffice: UILabel!
    @IBOutlet weak var twitterAcc: UILabel!
    @IBOutlet weak var youtubeChannel: UILabel!
    
    var selectedOffice : [KCO] = selectedCountry.officeList

        
    override func viewDidLoad() {
        super.viewDidLoad()
       
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        map.delegate = self
        
       numberOffice.text = selectedOffice[0].phoneKCO
       openingTimes.text = selectedOffice[0].openingHours
       addressOffice.text = selectedOffice[0].address
       twitterAcc.text = selectedOffice[0].twitter
       youtubeChannel.text = selectedOffice[0].youtube
        
        print(selectedOffice)
        
        // Do any additional setup after loading the view.
    }
    @IBAction func backbtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func directionsTapped(_ sender: Any) {
        getAddress()
    }
    
// MARK: - Get Address Function
    func getAddress(){
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(addressTextField.text!) { (placemarks, error) in
            guard let placemarks = placemarks, let location = placemarks.first?.location
                else{
                    print("No Location Found")
                    return
            }
            print("•Loc",location)
            self.mapThis(destinationCord: location.coordinate)
        }
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("Loc",locations)
    }

// MARK: - Map Coordinates & Directions Function
    func mapThis(destinationCord : CLLocationCoordinate2D) {
        let sourceCoordinate = (locationManager.location!.coordinate)
        let sourcePlaceMark = MKPlacemark(coordinate: sourceCoordinate)
        let destPlaceMark = MKPlacemark(coordinate: destinationCord)
        let sourceItem = MKMapItem(placemark: sourcePlaceMark)
        let destItem = MKMapItem(placemark: destPlaceMark)
        
        let destinationRequest = MKDirections.Request()
        destinationRequest.source = sourceItem
        destinationRequest.destination = destItem
        destinationRequest.transportType = .automobile
        destinationRequest.requestsAlternateRoutes = true
        
        let directions = MKDirections(request: destinationRequest)
        directions.calculate { (response, error) in
            guard let response = response else{
                if let error = error {
                    print("Something is wrong", error)
                }
                return
            }
            let route = response.routes[0]
            self.map.addOverlay(route.polyline)
            self.map.setVisibleMapRect(route.polyline.boundingMapRect, animated: true)
        }
    }
    
// MARK: - Map View Function
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let render = MKPolylineRenderer(overlay: overlay as! MKPolyline)
        render.strokeColor = .blue
        return render
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
