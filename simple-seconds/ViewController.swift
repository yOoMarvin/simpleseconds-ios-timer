//
//  ViewController.swift
//  simple-seconds
//
//  Created by Marvin Messenzehl on 19.02.17.
//  Copyright © 2017 Marvin Messenzehl. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    
    // MARK: - Outlets from storyboard
    
    @IBOutlet weak var secondsLabel: UILabel!
    @IBOutlet weak var secondsSlider: UISlider!
    
    @IBAction func sliderChanged(_ sender: Any) {
        let seconds = Int(secondsSlider.value)
        secondsLabel.text = "\(seconds)"
    }
    
    @IBAction func activateTapped(_ sender: Any) {
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert]) { (granted, error) in
            if granted {
                print("Notifcations allowed")
            }
            
            if let error = error {
                print(error.localizedDescription)
            }
        }
    }

}

