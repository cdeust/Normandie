//
//  PhotoViewController.swift
//  Normandie
//
//  Created by Clément DEUST on 16/06/16.
//  Copyright © 2016 cdeust. All rights reserved.
//

import UIKit
import Foundation

class PhotoViewController: UIViewController {
    
    var model: PhotoModel!
    
    var slideshowArray = [String]()
    
    @IBOutlet weak var imgSlideshow: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.model = PhotoModel()
        
        slideshowArray = self.model.pickRandomImage()
        imgSlideshow.image = UIImage (named: "\(slideshowArray[0]).jpg")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}

extension PhotoViewController {
    
    @IBAction func backPressed(sender sender: UIButton) -> Void {
        self.navigationController?.popViewControllerAnimated(false)
    }
    
    @IBAction func imgOnePressed(sender: AnyObject) {
        imgSlideshow.image = UIImage (named: "\(slideshowArray[0]).jpg")
    }
    
    @IBAction func imgTwoPressed(sender: AnyObject) {
        imgSlideshow.image = UIImage (named: "\(slideshowArray[1]).jpg")
    }
    
    @IBAction func imgThreePressed(sender: AnyObject) {
        imgSlideshow.image = UIImage (named: "\(slideshowArray[2]).jpg")
    }
    
    @IBAction func imgFourPressed(sender: AnyObject) {
        imgSlideshow.image = UIImage (named: "\(slideshowArray[3]).jpg")
    }
    
    @IBAction func imgFivePressed(sender: AnyObject) {
        imgSlideshow.image = UIImage (named: "\(slideshowArray[4]).jpg")
    }
    
    @IBAction func imgSixPressed(sender: AnyObject) {
        imgSlideshow.image = UIImage (named: "\(slideshowArray[5]).jpg")
    }
    
    @IBAction func imgSevenPressed(sender: AnyObject) {
        imgSlideshow.image = UIImage (named: "\(slideshowArray[6]).jpg")
    }
}