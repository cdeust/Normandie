//
//  VideoModel.swift
//  Normandie
//
//  Created by Clément DEUST on 17/06/16.
//  Copyright © 2016 cdeust. All rights reserved.
//

import UIKit
import AVKit
import Foundation
import AVFoundation

class VideoModel {
    
    func startVideoInModalView(parentViewController parentViewController: UIViewController) {
        let videoURL = NSBundle.mainBundle().URLForResource("Normandiepourlavie", withExtension: ".mp4")
        let player = AVPlayer(URL: videoURL!)
        let playerController = AVPlayerViewController()
        playerController.player = player
        parentViewController.presentViewController(playerController, animated: false, completion: nil)
        player.play()
    }
    
}


