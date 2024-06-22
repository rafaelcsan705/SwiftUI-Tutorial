//
//  TextOverlay.swift
//  Landmark
//
//  Created by Rafael Santos on 20/06/2024.
//

import SwiftUI

struct TextOverlay: View {
    
    var landmark: Landmark
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            gradient
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .bold()
                Text(landmark.park)
            }
            .padding()
        }
        .foregroundStyle(.white)
    }
    
    var gradient: LinearGradient {
        .linearGradient(
            colors: [
                .black.opacity(0.8),
                    .black.opacity(0)
            ],
            startPoint: .bottom,
            endPoint: .center
        )
    }
}

#Preview {
    TextOverlay(landmark: ModelData().landmarks[0])
}
