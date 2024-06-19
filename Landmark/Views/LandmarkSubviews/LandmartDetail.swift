//
//  LandmartDetail.swift
//  Landmark
//
//  Created by Rafael Santos on 18/06/2024.
//

import SwiftUI

struct LandmartDetail: View {
    
    let landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinator: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.footnote)
                Text(landmark.description)
                Spacer()
            }
            .padding()
        }
        .ignoresSafeArea()
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmartDetail(landmark: ModelData().landmarks[0])
}

#Preview {
    LandmartDetail(landmark: ModelData().landmarks[1])
}
