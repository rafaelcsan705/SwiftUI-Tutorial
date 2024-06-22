//
//  NotificationController.swift
//  WatchLandmarks Watch App
//
//  Created by Rafael Santos on 22/06/2024.
//

import Foundation
import SwiftUI
import UserNotifications

class NotificationController: WKUserNotificationHostingController<NotificationView> {
    
    var landmark: Landmark?
    var title: String?
    var message: String?
    
    let landmarkIndexKey = "landmarkIndex"
    
    override var body: NotificationView {
        NotificationView(title: title, message: message, landmark: landmark)
    }
    
    override func didReceive(_ notification: UNNotification) {
        let modelData = ModelData()
        
        let notificatioData = notification.request.content.userInfo as? [String: Any]
        let aps = notificatioData?["aps"] as? [String: Any]
        let alert = aps?["alert"] as? [String: Any]
        
        title = alert?["title"] as? String
        message = alert?["body"] as? String
        
        if let index = notificatioData?[landmarkIndexKey] as? Int {
            landmark = modelData.landmarks[index]
        }
    }
}
