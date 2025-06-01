//
//  CreateThreadView.swift
//  Thread Clone
//
//  Created by Aung Myat Moe on 01/06/2025.
//

import SwiftUI

struct CreateThreadView: View {

    @State private var caption = ""
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    ProfileImageCircleView()
                    VStack(alignment: .leading) {
                        Text("@aungmyatmoe")
                            .font(.caption)
                        TextField(
                            "What's on your mind?",
                            text: $caption,
                            axis: .vertical
                        )

                    }
                    Spacer()
                    Button {
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundStyle(.gray)
                    }

                }
                .padding()

                Spacer()

            }
            .toolbar {

                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {

                    }
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Post") {

                    }
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                }
            }
        }
    }
}

#Preview {
    CreateThreadView()
}
