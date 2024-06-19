//
//  CircleImage.swift
//  SwiftUIProject
//
//  Created by Rafael Santos on 18/06/2024.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
