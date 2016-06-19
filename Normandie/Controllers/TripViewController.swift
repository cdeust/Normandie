//
//  TripViewController.swift
//  Normandie
//
//  Created by Clément DEUST on 17/06/16.
//  Copyright © 2016 cdeust. All rights reserved.
//

import UIKit
import MapKit
import Foundation

class TripViewController: UIViewController {
    
    @IBOutlet var map: MKMapView!
    @IBOutlet weak var caen: UILabel!
    @IBOutlet weak var bayeux: UILabel!
    @IBOutlet weak var honfleur: UILabel!
    @IBOutlet weak var dday: UILabel!
    @IBOutlet weak var chausey: UILabel!
    @IBOutlet weak var rouen: UILabel!
    @IBOutlet weak var champDeBataille: UILabel!
    @IBOutlet weak var gaillard: UILabel!
    @IBOutlet weak var nezDeJobourg: UILabel!
    @IBOutlet weak var harasDuPin: UILabel!
    @IBOutlet weak var suisseNormande: UILabel!
    @IBOutlet weak var dieppe: UILabel!
    @IBOutlet weak var etretat: UILabel!
    @IBOutlet weak var mtstmichel: UILabel!
    
    var locationManager: CLLocationManager?
    var destination: String?
    var model: TripModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        locationManager?.requestWhenInUseAuthorization()
        
        self.model = TripModel()
        self.model.setPinForCoolSpotToGo(map: map)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "historicSegue" {
            let historicViewController = segue.destinationViewController as! HistoricViewController
            historicViewController.destination = self.destination
        }
    }
}

extension TripViewController {
    @IBAction func backPressed(sender sender: UIButton) -> Void {
        self.navigationController?.popViewControllerAnimated(false)
    }
    
    @IBAction func routePressed(sender sender: UIButton) -> Void {
        self.model.destination = self.getDestination(tag: sender.tag)
        self.model.drawRoute(map: map)
    }
    
    @IBAction func zoomPressed(sender sender: UIButton) -> Void {
        self.model.destination = self.getDestination(tag: sender.tag)
        self.model.zoomOnLocation(map: map)
    }
    
    @IBAction func tappedLabel(sender sender: UITapGestureRecognizer) -> Void {
        if let tag = sender.view?.tag {
            self.destination = self.getDestination(tag: tag)
            self.performSegueWithIdentifier("historicSegue", sender: self)
        }
    }
}

extension TripViewController {
    
    func getDestination(tag tag: Int) -> String {
        var destination = ""
        
        switch tag {
            case 0:
                destination = "Caen"
            case 1:
                destination = "Bayeux"
            case 2:
                destination = "Honfleur"
            case 3:
                destination = "DDay"
            case 4:
                destination = "Chausey"
            case 5:
                destination = "Rouen"
            case 6:
                destination = "Champ de Bataille"
            case 7:
                destination = "Gaillard"
            case 8:
                destination = "Jobourg"
            case 9:
                destination = "Haras du Pin"
            case 10:
                destination = "Suisse Normande"
            case 11:
                destination = "Dieppe"
            case 12:
                destination = "Etretat"
            case 13:
                destination = "Mont St-Michel"
            default:
                destination = "Mont St-Michel"
        }
        
        return destination
    }
}