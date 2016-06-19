//
//  AboutViewController.swift
//  Normandie
//
//  Created by Clément DEUST on 15/06/16.
//  Copyright © 2016 cdeust. All rights reserved.
//

import UIKit
import Foundation


class AboutViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}

extension AboutViewController {
    
    @IBAction func backPressed(sender sender: UIButton) -> Void {
        self.navigationController?.popViewControllerAnimated(false)
    }
    
}