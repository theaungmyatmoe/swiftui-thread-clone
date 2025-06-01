//
//  ThreadCellView.swift
//  Thread Clone
//
//  Created by Aung Myat Moe on 31/05/2025.
//

import SwiftUI

struct ThreadCellView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 14) {

            Image("profile-image")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())

            VStack(alignment: .leading) {
                HStack {
                    NavigationLink {
                        ProfileView()
                    } label: {
                        Text("aungmyatmoe")
                            .font(.caption)
                            .fontWeight(.medium)
                            .foregroundStyle(.black)
                    }

                    Spacer()

                    Text("10m")
                        .font(.caption)
                        .fontWeight(.light)
                        .foregroundStyle(.secondary)

                    Image(systemName: "ellipsis")
                        .foregroundStyle(.secondary)
                }
                Text("SwiftUI look really cool! 😄")
                    .font(.caption)

                HStack(spacing: 8) {
                    Image(systemName: "heart")

                    Image(systemName: "bubble.left")

                    Image(
                        systemName:
                            "arrow.trianglehead.counterclockwise.rotate.90"
                    )

                    Image(systemName: "paperplane")
                }
                .padding(.vertical, 4)

            }
        }
        .padding()

        Divider()
    }
}

#Preview {
    ThreadCellView()
}
