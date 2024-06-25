//
//  NotificationView.swift
//  WatchLandmarks Watch App
//
//  Created by Rafael Santos on 22/06/2024.
//

import SwiftUI

struct NotificationView: View {
    
    var title: String?
    var message: String?
    var landmark: Landmark?
    
    var body: some View {
        VStack {
            if let landmark {
                CircleImage(image: landmark.image.resizable())
                    .scaledToFit()
            }
            titleView
            Divider()
            messageView
        }
    }
    
    var titleView: some View {
        Text(title ?? "Unknown landmark")
            .font(.headline)
    }
    
    var messageView: some View {
        Text(message ?? "You are within 5 miles of one of your favorite landmarks.")
            .font(.caption)
    }
}

#Preview {
    NotificationView()
}

#Preview {
    let landmark = ModelData().landmarks[0]
    return NotificationView(title: landmark.name, landmark: landmark)
}
