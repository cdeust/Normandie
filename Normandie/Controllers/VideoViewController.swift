//
//  VideoViewController.swift
//  Normandie
//
//  Created by Clément DEUST on 15/06/16.
//  Copyright © 2016 cdeust. All rights reserved.
//

import UIKit
import AVKit
import WebKit
import AVFoundation

class VideoViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet weak var videoContainer: UIView!
    
    var model: VideoModel!
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.model = VideoModel()
    }
    
    override func viewDidAppear(animated: Bool) {
        
        webView = WKWebView(frame: CGRectMake(0, 0, videoContainer.bounds.width, videoContainer.bounds.height), configuration: self.getWebKitViewConfiguration())
        videoContainer.addSubview(webView);
        
        let embedHTML = "<html><body><iframe width=\"100%\" height=\"100%\" src=\"//www.youtube.com/embed/UFsRwWwmxkM?rel=0\" frameborder=\"0\" allowfullscreen></iframe></body></html>";
        let url: NSURL = NSURL(string: "https://")!
        webView.loadHTMLString(embedHTML as String, baseURL:url)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func willRotateToInterfaceOrientation(toInterfaceOrientation: UIInterfaceOrientation, duration: NSTimeInterval) {
        videoContainer.setNeedsUpdateConstraints()
        webView.setNeedsUpdateConstraints()
    }
}

extension VideoViewController {
    
    @IBAction func backPressed(sender sender: UIButton) -> Void {
        self.navigationController?.popViewControllerAnimated(false)
    }
}


extension VideoViewController {
    
    func getWebKitViewConfiguration() -> WKWebViewConfiguration {
        let webViewConfiguration: WKWebViewConfiguration = WKWebViewConfiguration()
        webViewConfiguration.allowsInlineMediaPlayback = true
        webViewConfiguration.allowsAirPlayForMediaPlayback = true
        webViewConfiguration.requiresUserActionForMediaPlayback = false
        return webViewConfiguration
    }
}