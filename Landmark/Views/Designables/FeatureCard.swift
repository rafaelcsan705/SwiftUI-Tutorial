//
//  FeatureCard.swift
//  Landmark
//
//  Created by Rafael Santos on 20/06/2024.
//

import SwiftUI

struct FeatureCard: View {
    
    var landmark: Landmark
    
    var body: some View {
        landmark.featureImage?
            .resizable()
            .overlay {
                TextOverlay(landmark: landmark)
            }
    }
}

#Preview {
    FeatureCard(landmark: ModelData().landmarks[0])
        .aspectRatio(3 / 2, contentMode: .fit)
}
