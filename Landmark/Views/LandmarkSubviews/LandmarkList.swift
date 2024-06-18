//
//  LandmarkList.swift
//  Landmark
//
//  Created by Rafael Santos on 18/06/2024.
//

import SwiftUI

struct LandmarkList: View {
    
    var body: some View {
        List(landmarks, id: \.id) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
