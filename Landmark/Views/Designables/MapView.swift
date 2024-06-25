//
//  MapView.swift
//  SwiftUIProject
//
//  Created by Rafael Santos on 18/06/2024.
//

import SwiftUI
import MapKit

enum Zoom: String, CaseIterable, Identifiable {
    case near = "Near"
    case medium = "Medium"
    case far = "Far"
    
    var id: Zoom { self }
}

struct MapView: View {
    
    @AppStorage("MapView.zoom")
    private var zoom: Zoom = .medium
    
    let coordinator: CLLocationCoordinate2D
    
    var delta: CLLocationDegrees {
        switch zoom {
        case .near: 0.02
        case .medium: 0.2
        case .far: 2.0
        }
    }
    
    var body: some View {
        Map(initialPosition: .region(region))
    }

    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinator,
            span: MKCoordinateSpan(latitudeDelta: delta, longitudeDelta: delta)
        )
    }
}

#Preview {
    MapView(coordinator: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
