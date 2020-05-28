//
//  MapViewController.swift
//  EcoFind_project
//
//  Created by Надя Мурдашева on 13.05.2020.
//  Copyright © 2020 Надя Мурдашева. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let location = CLLocationCoordinate2DMake(55.770699, 37.675648)
        let span = MKCoordinateSpan(latitudeDelta: 0.002,longitudeDelta: 0.002)
        let region = MKCoordinateRegion(center: location, span: span)
        map.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Контейнер Эколайн"
        annotation.subtitle = "Плетешковский пер., 8, стр. 1"
        map.addAnnotation(annotation)
        
        
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
