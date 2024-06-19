//
//  LandmarkRow.swift
//  Landmark
//
//  Created by Rafael Santos on 18/06/2024.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
                .font(.title)
                .padding()
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    
    return Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
        LandmarkRow(landmark: landmarks[2])
        LandmarkRow(landmark: landmarks[3])
    }
}
