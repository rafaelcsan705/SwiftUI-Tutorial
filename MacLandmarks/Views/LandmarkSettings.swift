//
//  LandmarkSettings.swift
//  Landmark
//
//  Created by Rafael Santos on 25/06/2024.
//

import SwiftUI

struct LandmarkSettings: View {
    
    @AppStorage("MapView.zoom")
    private var zoom: Zoom = .medium
    
    var body: some View {
        Form {
            Picker("Map Zoom", selection: $zoom) {
                ForEach(Zoom.allCases) { level in
                    Text("\(level.rawValue)")
                }
            }
            .pickerStyle(.inline)
        }
        .frame(width: 300)
        .navigationTitle("Landmark Settings")
        .padding(80)
    }
}

#Preview {
    LandmarkSettings()
}
