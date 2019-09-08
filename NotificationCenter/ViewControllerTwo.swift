//
//  ViewControllerTwo.swift
//  NotificationCenter
//
//  Created by Mohamed on 9/8/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewControllerTwo: UIViewController {
    
    
    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(handleNotification(_:)), name:Notifications.viewControllerPublishEvent , object: nil)
        
        print("view did load has been called")
        
    }
    
    @objc func handleNotification(_ notification:Notification){
        
        print("Notification has been recieved in ViewControllerTwo")
       
        if let dataUserInfo = notification.userInfo {
            
            dataLabel.text = dataUserInfo["Name"] as? String
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("view will appear has been called")
        
        
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
       // NotificationCenter.default.removeObserver(self, name: Notifications.viewControllerPublishEvent, object: nil)
        
    }

}
