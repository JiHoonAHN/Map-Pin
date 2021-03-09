//
//  ViewController.swift
//  Map Pin
//
//  Created by Ji-hoon Ahn on 2021/03/09.
//

import UIKit
import MapKit
class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 38.8977, longitude: -77.0365)
        annotation.title = "The White house"
        annotation.subtitle = "president house"
        mapView.addAnnotation(annotation)
        let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 500, longitudinalMeters: 500)
        mapView.setRegion(region, animated: true)
    }


}

