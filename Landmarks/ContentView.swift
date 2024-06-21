//
//  ContentView.swift
//  Landmarks
//
//  Created by Santos, Rafael Costa on 14/04/2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                MapView()
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 250)
                
                CircleImage()
                    .offset(y: -105)
                    .padding(.bottom, -105)
                
                VStack(alignment: .center) {
                    Text("Deloitte Hub Lisbon")
                        .font(.title)
                        .bold()
                        
                    HStack {
                        Text("Av. Eng. Duarte Pacheco")
                            .font(.subheadline)
                            
                        Spacer()
                        Text("1070-100 Lisboa")
                            .font(.subheadline)
                    }
                    .padding(.top)
                    
                    Divider()
                    
                    Text("About Deloitte")
                        .font(.title3)
                        .bold()
                        .padding(.top)
                        .frame(maxWidth: .infinity ,alignment: .leading)
                    
                    Text("Deloitte Touche Tohmatsu Limited, commonly referred to as Deloitte, is an Anglo-American multinational professional services network. \nDeloitte is one of the Big Four accounting organizations and the largest professional services network in the world by revenue and number of professionals, with headquarters in London, England")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        .padding(.top)
                }
                .padding()
                
                Spacer()
            }
        }
        .ignoresSafeArea()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
