//
//  ViewController.swift
//  GoogleTagManagerSwiftDemo
//
//  Created by xuzepei on 16/3/3.
//  Copyright © 2016年 xuzepei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var dataLayer: TAGDataLayer = TAGManager.instance().dataLayer

    @IBOutlet weak var myButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dataLayer.push(["event": "OpenScreen", "screenName": "Home Screen"])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickedButton(sender: AnyObject) {
        
        dataLayer.push(["event": "ButtonPressed", "eventAction": "Test Event Action"])
    }

}

