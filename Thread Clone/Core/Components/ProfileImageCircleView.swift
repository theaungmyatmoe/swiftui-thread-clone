//
//  ProfileImageCircleView.swift
//  Thread Clone
//
//  Created by Aung Myat Moe on 31/05/2025.
//

import SwiftUI

struct ProfileImageCircleView: View {
    var body: some View {
        Image("profile-image")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())

    }
}

#Preview {
    ProfileImageCircleView()
}
