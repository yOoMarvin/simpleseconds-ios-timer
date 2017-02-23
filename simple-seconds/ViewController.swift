//
//  ViewController.swift
//  simple-seconds
//
//  Created by Marvin Messenzehl on 19.02.17.
//  Copyright © 2017 Marvin Messenzehl. All rights reserved.
//

import UIKit
import UserNotifications

let notificationIdentifier = "com.marvinmessenzehl.simple-seconds"

class ViewController: UIViewController {

    
    // MARK: - Outlets from storyboard
    
    @IBOutlet weak var secondsLabel: UILabel!
    @IBOutlet weak var secondsSlider: UISlider!
    
    @IBAction func sliderChanged(_ sender: Any) {
        let seconds = Int(secondsSlider.value)
        secondsLabel.text = "\(seconds)"
    }
    
    @IBAction func activateTapped(_ sender: Any) {
        let notification = SSNotification()
        let content = notification.getContent()
        let trigger = notification.getTimeTrigger(forSeconds: getSeconds())
        
        let request = UNNotificationRequest(identifier: notificationIdentifier, content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request) {
            (error) in
            
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            self.present(self.getDialog(finished: false), animated: true, completion: nil)
        }
    }
    
    
    
    private func getSeconds () -> Int {
        return Int(secondsSlider.value)
    }
    
    func getDialog (finished: Bool) -> UIAlertController {
        let title = finished ? "Time's up" : "Timer started"
        let msg = finished ? "Your tea is ready!" : "Your tea countdown started"
        
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        return alert
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().delegate = self
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

