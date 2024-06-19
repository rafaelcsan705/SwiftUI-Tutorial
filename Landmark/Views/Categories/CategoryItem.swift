//
//  CategoryItem.swift
//  Landmark
//
//  Created by Rafael Santos on 19/06/2024.
//

import SwiftUI

struct CategoryItem: View {
    
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .foregroundStyle(.primary)
                .font(.caption)
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    return CategoryItem(landmark: landmarks[0])
}
