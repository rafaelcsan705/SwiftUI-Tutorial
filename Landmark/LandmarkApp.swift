//
//  LandmarkApp.swift
//  Landmark
//
//  Created by Rafael Santos on 18/06/2024.
//

import SwiftUI

@main
struct LandmarkApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
