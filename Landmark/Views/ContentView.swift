//
//  ContentView.swift
//  SwiftUIProject
//
//  Created by Rafael Santos on 18/06/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
