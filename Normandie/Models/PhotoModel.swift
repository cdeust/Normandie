//
//  PhotoModel.swift
//  Normandie
//
//  Created by Clément DEUST on 16/06/16.
//  Copyright © 2016 cdeust. All rights reserved.
//

import UIKit
import Foundation

class PhotoModel {
    
    var possibleImgArray: [String] = ["etretatview",
                                      "bayeux_cathedral",
                                      "bayeux_museum",
                                      "caen",
                                      "caen-castle",
                                      "caen-castle1",
                                      "church",
                                      "honfleur",
                                      "beach",
                                      "dd-day-cemetary",
                                      "dd-day",
                                      "castle",
                                      "etretatpanorama",
                                      "house",
                                      "isle-chausey",
                                      "isle",
                                      "montstmichel",
                                      "normandy-valley",
                                      "panorama",
                                      "rouen",
                                      "cathedrale-de-rouen1",
                                      "cathedrale-Rouen",
                                      "champdebataille_castle",
                                      "chateau-du-champ-de-bataille-eure",
                                      "chateau-gaillard",
                                      "chausey-isle-1",
                                      "chausey-isle",
                                      "chausey",
                                      "dd-day-cemetary-1",
                                      "dd-day-cemetary-2",
                                      "dieppe-kite",
                                      "etretat-cliff",
                                      "haras_du_pin",
                                      "honfleur-1",
                                      "jobourg_nose",
                                      "Le-haras-du-pin",
                                      "norman_switzerland-1",
                                      "normandy-aerial",
                                      "rouen-1",
                                      "rouen-2",
                                      "rouen",
                                      "stmichel",
                                      "stmichel-1",
                                      "stmichel-2",
                                      "stmichel-3"];
    
    var slideshowArray = [String]()
    
    func pickRandomImage() -> [String] {
        
        for i in 0...6 {
            
            let rand = Int(arc4random_uniform(UInt32(possibleImgArray.count)))
            slideshowArray.insert(possibleImgArray[rand], atIndex:i)
            
            let index = possibleImgArray.indexOf(possibleImgArray[rand])
            possibleImgArray.removeAtIndex(index!)
        }
        
        return slideshowArray
    }
    
}