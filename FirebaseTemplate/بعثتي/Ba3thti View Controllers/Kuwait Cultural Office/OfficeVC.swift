//
//  OfficeVC.swift
//  بعثتي
//
//  Created by ghadeer alqattan on 7/17/20.
//  Copyright © 2020 GeeCodes. All rights reserved.
//

import UIKit
import MapKit

class OfficeVC: UIViewController, MKMapViewDelegate {

    let locationManager = CLLocationManager()
    
    
    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var numberOffice: UILabel!
    @IBOutlet weak var openingTimes: UILabel!
    @IBOutlet weak var addressOffice: UILabel!
    @IBOutlet weak var twitterAcc: UILabel!
    @IBOutlet weak var youtubeChannel: UILabel!
    
    var selectedOffice : [KCO] = selectedCountry.officeList

      
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
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
        

    // MARK: - Adding embassies pin to the map
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 29.390545, longitude: 47.995060)
        annotation.title = "British Embassy"
        annotation.subtitle = "British Embassy Arabian Gulf Street Dasman"
        map.addAnnotation(annotation)
        
        let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 500, longitudinalMeters: 500)
        map.setRegion(region, animated: true)
        


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


