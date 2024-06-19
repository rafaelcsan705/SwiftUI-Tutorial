//
//  Landmark.swift
//  SwiftUIProject
//
//  Created by Rafael Santos on 18/06/2024.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var city: String
    var state: String
    var isFeatured: Bool
    var isFavorite: Bool
    var park: String
    var description: String
    var category: Category
    
    private var coordinates: Coordinate
    private var imageName: String
}

extension Landmark {
    
    var image: Image {
        Image(imageName)
    }
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}
