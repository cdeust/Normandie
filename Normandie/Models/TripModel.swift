//
//  TripModel.swift
//  Normandie
//
//  Created by Clément DEUST on 17/06/16.
//  Copyright © 2016 cdeust. All rights reserved.
//

import UIKit
import MapKit
import Foundation

var myRoute: MKRoute!
var myLocation: CLLocationCoordinate2D!

class TripModel: NSObject {
    
    private var _destination: String = ""
    
    let etretat = MKPointAnnotation()
    let montstmichel = MKPointAnnotation()
    let caen = MKPointAnnotation()
    let bayeux = MKPointAnnotation()
    let honfleur = MKPointAnnotation()
    let dday = MKPointAnnotation()
    let chausey = MKPointAnnotation()
    let rouen = MKPointAnnotation()
    let champDeBataille = MKPointAnnotation()
    let gaillard = MKPointAnnotation()
    let nezDeJobourg = MKPointAnnotation()
    let harasDuPin = MKPointAnnotation()
    let suisseNormande = MKPointAnnotation()
    let dieppe = MKPointAnnotation()
    
    var destination: String {
        get {
            return _destination
        }
        set {
            _destination = newValue
        }
    }
    
    func setPinForCoolSpotToGo(map map: MKMapView) {
        
        let etretatLocation = CLLocationCoordinate2D(latitude:49.7066006,longitude:0.1863934)
        let montstmichelLocation = CLLocationCoordinate2D(latitude:48.6360201,longitude:-1.5133032)
        let caenLocation = CLLocationCoordinate2D(latitude:49.1864973,longitude:-0.3648603)
        let bayeuxLocation = CLLocationCoordinate2D(latitude:49.2755749,longitude:-0.7056697)
        let honfleurLocation = CLLocationCoordinate2D(latitude:49.425372,longitude:0.2536026)
        let ddayLocation = CLLocationCoordinate2D(latitude:49.359212,longitude:-0.857282)
        let chauseyLocation = CLLocationCoordinate2D(latitude:48.8604538,longitude:-1.8132854)
        let rouenLocation = CLLocationCoordinate2D(latitude:49.4401736,longitude:1.0928193)
        let champDeBatailleLocaation = CLLocationCoordinate2D(latitude:49.1674579,longitude:0.8549478)
        let gaillardLocation = CLLocationCoordinate2D(latitude:49.2388468,longitude:1.4036104)
        let nezDeJobourgLocation = CLLocationCoordinate2D(latitude:49.6718864,longitude:-1.9445034)
        let harasDuPinLocation = CLLocationCoordinate2D(latitude:48.7373121,longitude:0.1450084)
        let suisseNormandeLocation = CLLocationCoordinate2D(latitude:48.9301013,longitude:-0.5290895)
        let dieppeLocation = CLLocationCoordinate2D(latitude:49.9200491,longitude:1.06598)
        
        map.showsUserLocation = true;
        map.mapType = MKMapType.Standard;
        
        etretat.coordinate = etretatLocation
        etretat.title = "Falaise d'Étretat"
        etretat.subtitle = "France, Normandy"
        map.addAnnotation(etretat)
        
        montstmichel.coordinate = montstmichelLocation
        montstmichel.title = "Mont Saint-Michel"
        montstmichel.subtitle = "France, Normandy"
        map.addAnnotation(montstmichel)
        
        caen.coordinate = caenLocation
        caen.title = "Château de Caen"
        caen.subtitle = "France, Normandy"
        map.addAnnotation(caen)
        
        bayeux.coordinate = bayeuxLocation
        bayeux.title = "Cathédrale de Bayeux"
        bayeux.subtitle = "France, Normandy"
        map.addAnnotation(bayeux)
        
        honfleur.coordinate = honfleurLocation
        honfleur.title = "Port de Honfleur"
        honfleur.subtitle = "France, Normandy"
        map.addAnnotation(honfleur)
        
        dday.coordinate = ddayLocation
        dday.title = "Cimetierre Américain"
        dday.subtitle = "France, Normandy"
        map.addAnnotation(dday)
        
        chausey.coordinate = chauseyLocation
        chausey.title = "Îles de Chausey"
        chausey.subtitle = "France, Normandy"
        map.addAnnotation(chausey)
        
        rouen.coordinate = rouenLocation
        rouen.title = "Cathédrale de Rouen"
        rouen.subtitle = "France, Normandy"
        map.addAnnotation(rouen)
        
        champDeBataille.coordinate = champDeBatailleLocaation
        champDeBataille.title = "Château du Champ de Bataille"
        champDeBataille.subtitle = "France, Normandy"
        map.addAnnotation(champDeBataille)
        
        gaillard.coordinate = gaillardLocation
        gaillard.title = "Château Gaillard"
        gaillard.subtitle = "France, Normandy"
        map.addAnnotation(gaillard)
        
        nezDeJobourg.coordinate = nezDeJobourgLocation
        nezDeJobourg.title = "Le nez de Jobourg"
        nezDeJobourg.subtitle = "France, Normandy"
        map.addAnnotation(nezDeJobourg)
        
        harasDuPin.coordinate = harasDuPinLocation
        harasDuPin.title = "Le Haras national du Pin"
        harasDuPin.subtitle = "France, Normandy"
        map.addAnnotation(harasDuPin)
        
        suisseNormande.coordinate = suisseNormandeLocation
        suisseNormande.title = "La Suisse Normande"
        suisseNormande.subtitle = "France, Normandy"
        map.addAnnotation(suisseNormande)
        
        dieppe.coordinate = dieppeLocation
        dieppe.title = "Dieppe"
        dieppe.subtitle = "France, Normandy"
        map.addAnnotation(dieppe)
    }
    
    func drawRoute(map map: MKMapView) {
        
        if myRoute != nil {
            map.removeOverlay(myRoute.polyline)
        }
        
        if myLocation != nil {
            let directionsRequest = MKDirectionsRequest()
            let markUser = MKPlacemark(coordinate: CLLocationCoordinate2DMake(myLocation!.latitude, myLocation!.longitude), addressDictionary: nil)
            let markDestination: MKPlacemark!
            
            switch self.destination {
                case "Etretat":
                    markDestination = MKPlacemark(coordinate: CLLocationCoordinate2DMake(etretat.coordinate.latitude, etretat.coordinate.longitude), addressDictionary: nil)
                case "Mont St-Michel":
                    markDestination = MKPlacemark(coordinate: CLLocationCoordinate2DMake(montstmichel.coordinate.latitude, montstmichel.coordinate.longitude), addressDictionary: nil)
                case "Caen":
                    markDestination = MKPlacemark(coordinate: CLLocationCoordinate2DMake(caen.coordinate.latitude, caen.coordinate.longitude), addressDictionary: nil)
                case "Bayeux":
                    markDestination = MKPlacemark(coordinate: CLLocationCoordinate2DMake(bayeux.coordinate.latitude, bayeux.coordinate.longitude), addressDictionary: nil)
                case "Honfleur":
                    markDestination = MKPlacemark(coordinate: CLLocationCoordinate2DMake(honfleur.coordinate.latitude, honfleur.coordinate.longitude), addressDictionary: nil)
                case "DDay":
                    markDestination = MKPlacemark(coordinate: CLLocationCoordinate2DMake(dday.coordinate.latitude, dday.coordinate.longitude), addressDictionary: nil)
                case "Chausey":
                    markDestination = MKPlacemark(coordinate: CLLocationCoordinate2DMake(chausey.coordinate.latitude, chausey.coordinate.longitude), addressDictionary: nil)
                case "Rouen":
                    markDestination = MKPlacemark(coordinate: CLLocationCoordinate2DMake(rouen.coordinate.latitude, rouen.coordinate.longitude), addressDictionary: nil)
                case "Champ de Bataille":
                    markDestination = MKPlacemark(coordinate: CLLocationCoordinate2DMake(champDeBataille.coordinate.latitude, champDeBataille.coordinate.longitude), addressDictionary: nil)
                case "Gaillard":
                    markDestination = MKPlacemark(coordinate: CLLocationCoordinate2DMake(gaillard.coordinate.latitude, gaillard.coordinate.longitude), addressDictionary: nil)
                case "Jobourg":
                    markDestination = MKPlacemark(coordinate: CLLocationCoordinate2DMake(nezDeJobourg.coordinate.latitude, nezDeJobourg.coordinate.longitude), addressDictionary: nil)
                case "Haras du Pin":
                    markDestination = MKPlacemark(coordinate: CLLocationCoordinate2DMake(harasDuPin.coordinate.latitude, harasDuPin.coordinate.longitude), addressDictionary: nil)
                case "Suisse Normande":
                    markDestination = MKPlacemark(coordinate: CLLocationCoordinate2DMake(suisseNormande.coordinate.latitude, suisseNormande.coordinate.longitude), addressDictionary: nil)
                case "Dieppe":
                    markDestination = MKPlacemark(coordinate: CLLocationCoordinate2DMake(dieppe.coordinate.latitude, dieppe.coordinate.longitude), addressDictionary: nil)
                default:
                    markDestination = nil
            }
            
            directionsRequest.source = MKMapItem(placemark: markUser)
            directionsRequest.destination = MKMapItem(placemark: markDestination)
            
            directionsRequest.transportType = MKDirectionsTransportType.Automobile
            let directions = MKDirections(request: directionsRequest)
            
            directions.calculateDirectionsWithCompletionHandler({
                response, error in
                if error == nil {
                    myRoute = response!.routes[0] as MKRoute
                    map.addOverlay(myRoute.polyline)
                }
            })
        }
    }
    
    func zoomOnLocation(map map: MKMapView) {
        switch self.destination {
            case "Etretat":
                map.centerCoordinate = etretat.coordinate
            case "Mont St-Michel":
                map.centerCoordinate = montstmichel.coordinate
            case "Caen":
                map.centerCoordinate = caen.coordinate
            case "Bayeux":
                map.centerCoordinate = bayeux.coordinate
            case "Honfleur":
                map.centerCoordinate = honfleur.coordinate
            case "DDay":
                map.centerCoordinate = dday.coordinate
            case "Chausey":
                map.centerCoordinate = chausey.coordinate
            case "Rouen":
                map.centerCoordinate = rouen.coordinate
            case "Champ de Bataille":
                map.centerCoordinate = champDeBataille.coordinate
            case "Gaillard":
                map.centerCoordinate = gaillard.coordinate
            case "Jobourg":
                map.centerCoordinate = nezDeJobourg.coordinate
            case "Haras du Pin":
                map.centerCoordinate = harasDuPin.coordinate
            case "Suisse Normande":
                map.centerCoordinate = suisseNormande.coordinate
            case "Dieppe":
                map.centerCoordinate = dieppe.coordinate
            default:
                if myLocation != nil {
                    map.centerCoordinate = myLocation
                }
        }
    }
    
}

extension TripViewController: MKMapViewDelegate {
    
    func mapView(mapView: MKMapView, rendererForOverlay overlay: MKOverlay) -> MKOverlayRenderer {
        let myLineRenderer = MKPolylineRenderer(polyline: myRoute.polyline)
        myLineRenderer.strokeColor = UIColor.redColor()
        myLineRenderer.lineWidth = 3
        return myLineRenderer
    }
    
    func mapView(mapView: MKMapView, didUpdateUserLocation userLocation: MKUserLocation) {
        myLocation = CLLocationCoordinate2D(
            latitude:userLocation.location!.coordinate.latitude,
            longitude:userLocation.location!.coordinate.longitude
        )
    }
}

extension TripViewController: CLLocationManagerDelegate {
    
    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        switch status {
            case .NotDetermined:
                manager.requestWhenInUseAuthorization()
                break
            case .AuthorizedWhenInUse:
                manager.startUpdatingLocation()
                break
            case .AuthorizedAlways:
                manager.startUpdatingLocation()
                break
            case .Restricted:
                break
            case .Denied:
                break
        }
    }
}