//
//  HistoricViewController.swift
//  Normandie
//
//  Created by Clément DEUST on 18/06/16.
//  Copyright © 2016 cdeust. All rights reserved.
//

import UIKit
import Foundation

class HistoricViewController: UIViewController {
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var destinationImg: UIImageView!
    @IBOutlet weak var destinationHistoricLbl: UILabel!
    
    var model: HistoricModel!
    var destination: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.model = HistoricModel()
        
        self.destinationImg.image = self.model.loadImageCorrespondingToDestination(destination: destination)
        self.destinationHistoricLbl.text = self.model.loadDescriptionCorrespondingToDestination(destination: destination)
    }
    
    override func didReceiveMemoryWarning() {
        super.viewDidLoad()
        
    }
    
}

extension HistoricViewController {
    
    @IBAction func backPressed(sender sender: UIButton) -> Void {
        self.navigationController?.popViewControllerAnimated(false)
    }

}