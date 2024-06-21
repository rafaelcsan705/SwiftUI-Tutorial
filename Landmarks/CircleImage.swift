//
//  CircleImage.swift
//  Landmarks
//
//  Created by Santos, Rafael Costa on 14/04/2021.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("deloitte")
            .resizable()
            .frame(width: 200, height: 200, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
