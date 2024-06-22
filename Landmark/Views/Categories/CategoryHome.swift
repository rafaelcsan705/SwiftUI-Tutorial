//
//  CategoryHome.swift
//  Landmark
//
//  Created by Rafael Santos on 19/06/2024.
//

import SwiftUI

struct CategoryHome: View {
    
    @Environment(ModelData.self) var modelData
    @State private var showProfile = false
    
    var body: some View {
        NavigationSplitView {
            List{
                PageView(pages: modelData.feature.map { FeatureCard(landmark: $0 )})
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            .navigationTitle("Featured")
            .toolbar {
                Button {
                    showProfile.toggle()
                } label: {
                    Label("User Profile", systemImage: "person.crop.circle")
                }
            }
            .sheet(isPresented: $showProfile) {
                ProfileHost()
                    .environment(modelData)
            }
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
