//
//  ViewController.swift
//  project21Swift
//
//  Created by Sami Islam on 8/21/23.
//

import UIKit
import UserNotifications


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Register", style: .plain, target: self, action: #selector(registerLocal))
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "schedule", style: .plain, target: self, action: #selector(scheduleLocal))
    }
    
    @objc func registerLocal() {
        let center = UNUserNotificationCenter.current()

         center.requestAuthorization(options: [.alert, .badge, .sound]) { (granted, error) in
             if granted {
                 print("Yay!")
             } else {
                 print("D'oh")
             }
         }
    }
    @objc func scheduleLocal() {
        
    }

}

