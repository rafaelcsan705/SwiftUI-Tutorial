//
//  ProfileHost.swift
//  Landmark
//
//  Created by Rafael Santos on 19/06/2024.
//

import SwiftUI

struct ProfileHost: View {
    
    @Environment(\.editMode) var editMode
    @Environment(ModelData.self) var modelData
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                cancelButton
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
                    .onAppear {
                        draftProfile = modelData.profile
                    }
                    .onDisappear {
                        modelData.profile = draftProfile
                    }
            }
        }
        .padding()
    }
    
    var cancelButton: some View {
        VStack {
            if editMode?.wrappedValue == .active {
                Button(role: .cancel) {
                    draftProfile = modelData.profile
                    editMode?.animation().wrappedValue = .inactive
                } label: {
                    Text("Cancel")
                }
            }
        }
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData())
}
