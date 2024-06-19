//
//  MapView.swift
//  SwiftUIProject
//
//  Created by Rafael Santos on 18/06/2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    let coordinator: CLLocationCoordinate2D
    
    var body: some View {
        Map(initialPosition: .region(region))
    }

    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinator,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView(coordinator: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
