//
//  ViewController.swift
//  NotificationCenter
//
//  Created by Mohamed on 9/7/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
        // publish notification
      
        
    }


    @IBAction func btn_publishNotification(_ sender: Any) {
        
        
        NotificationCenter.default.post(name: Notifications.viewControllerPublishEvent, object: nil , userInfo: ["Name" : "Mohamed" , "Age" : 21]) 
    }
}

