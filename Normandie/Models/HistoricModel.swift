//
//  HistoricModel.swift
//  Normandie
//
//  Created by Clément DEUST on 18/06/16.
//  Copyright © 2016 cdeust. All rights reserved.
//

import UIKit
import Foundation

class HistoricModel {
    
    func loadImageCorrespondingToDestination(destination destination: String) -> UIImage {
        var imgTop: UIImage
        
        switch destination {
            case "Caen":
                imgTop = UIImage(named: "caen-castle")!
            case "Bayeux":
                imgTop = UIImage(named: "bayeux_cathedral")!
            case "Honfleur":
                imgTop = UIImage(named: "honfleur")!
            case "DDay":
                imgTop = UIImage(named: "dd-day")!
            case "Chausey":
                imgTop = UIImage(named: "chausey")!
            case "Rouen":
                imgTop = UIImage(named: "rouen-2")!
            case "Champ de Bataille":
                imgTop = UIImage(named: "chateau-du-champ-de-bataille-eure")!
            case "Gaillard":
                imgTop = UIImage(named: "chateau-gaillard")!
            case "Jobourg":
                imgTop = UIImage(named: "jobourg_nose")!
            case "Haras du Pin":
                imgTop = UIImage(named: "haras_du_pin")!
            case "Suisse Normande":
                imgTop = UIImage(named: "norman_switzerland-1")!
            case "Dieppe":
                imgTop = UIImage(named: "dieppe-kite")!
            case "Etretat":
                imgTop = UIImage(named: "etretat-cliff")!
            case "Mont St-Michel":
                imgTop = UIImage(named: "stmichel-3")!
            default:
                imgTop = UIImage(named: "caen-castle")!
        }
        
        return imgTop
    }
    
    func loadDescriptionCorrespondingToDestination(destination destination: String) -> String {
        
        var description: String
        
        switch destination {
            case "Caen":
                description = NSLocalizedString("caen_castle_historic", comment: "Caen Castle")
            case "Bayeux":
                description = NSLocalizedString("bayeux_cathedral_historic", comment: "Bayeux Cathedral")
            case "Honfleur":
                description = NSLocalizedString("honfleur_port_historic", comment: "Honfleur Port")
            case "DDay":
                description = NSLocalizedString("dday_cemetary_historic", comment: "DDay Cemetary")
            case "Chausey":
                description = NSLocalizedString("chausey_isle_historic", comment: "Chausey Isle")
            case "Rouen":
                description = NSLocalizedString("rouen_cathedral_historic", comment: "Rouen Cathedral")
            case "Champ de Bataille":
                description = NSLocalizedString("champdebataille_castle_historic", comment: "Champ de Bataille Castle")
            case "Gaillard":
                description = NSLocalizedString("gaillard_castle_historic", comment: "Gaillard Castle")
            case "Jobourg":
                description = NSLocalizedString("jobourg_nose_historic", comment: "Jobourg Nose")
            case "Haras du Pin":
                description = NSLocalizedString("harasdupin_historic", comment: "Haras du Pin")
            case "Suisse Normande":
                description = NSLocalizedString("norman_switzerland_historic", comment: "Norman Switzerland")
            case "Dieppe":
                description = NSLocalizedString("dieppe_historic", comment: "Caen Castle")
            case "Etretat":
                description = NSLocalizedString("etretat_cliff_historic", comment: "Etretat Cliff")
            case "Mont St-Michel":
                description = NSLocalizedString("stmichel_historic", comment: "Mount St-Michel")
            default:
                description = NSLocalizedString("stmichel_historic", comment: "Mount St-Michel")
        }
        
        
        return description
    }
    
}