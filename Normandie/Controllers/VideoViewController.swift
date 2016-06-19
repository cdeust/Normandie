//
//  VideoViewController.swift
//  Normandie
//
//  Created by Clément DEUST on 15/06/16.
//  Copyright © 2016 cdeust. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class VideoViewController: UIViewController {
    
    var model: VideoModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.model = VideoModel()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

extension VideoViewController {
    
    @IBAction func backPressed(sender sender: UIButton) -> Void {
        self.navigationController?.popViewControllerAnimated(false)
    }
    
    @IBAction func playVideoInsideAVKit() {
        self.model.startVideoInModalView(parentViewController: self)
    }
    
}
