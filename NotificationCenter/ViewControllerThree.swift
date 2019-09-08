//
//  ViewControllerThree.swift
//  NotificationCenter
//
//  Created by Mohamed on 9/8/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewControllerThree: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(handleNotification(_:)), name:
            
            Notifications.viewControllerPublishEvent, object: nil)
        
        print("ViewDidLoad has been called")
    }
   
    @objc func handleNotification(_ notification:Notification){
        
        print("Notification has been recieved in ViewControllerThree")
        print(notification.userInfo as Any)
        
        if let dataUserInfo = notification.userInfo {
            
            dataLabel.text = "\(dataUserInfo["Age"]!)"
        }
        
    }
   
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("ViewWillAppear has been called")
        
    }



}
