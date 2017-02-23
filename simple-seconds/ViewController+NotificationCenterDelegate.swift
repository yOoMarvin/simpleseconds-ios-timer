//
//  ViewController+NotificationCenterDelegate.swift
//  simple-seconds
//
//  Created by Marvin Messenzehl on 23.02.17.
//  Copyright © 2017 Marvin Messenzehl. All rights reserved.
//

import Foundation
import UserNotifications

extension ViewController: UNUserNotificationCenterDelegate {
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        
        completionHandler(.alert)
    }
}
