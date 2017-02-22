//
//  SSNotification.swift
//  simple-seconds
//
//  Created by Marvin Messenzehl on 22.02.17.
//  Copyright © 2017 Marvin Messenzehl. All rights reserved.
//

import Foundation
import UserNotifications

class SSNotification {
    func getContent() -> UNMutableNotificationContent{
    
        let content = UNMutableNotificationContent()
        content.title = "The Time has expired"
        content.subtitle = "Powered by simple seconds!"
        content.body = "Dude! You have the perfect tea now! We are ready!"
        //content.badge = 1
        
        return content
    }
}
