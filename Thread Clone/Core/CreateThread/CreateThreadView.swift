//
//  CreateThreadView.swift
//  Thread Clone
//
//  Created by Aung Myat Moe on 01/06/2025.
//

import SwiftUI

struct CreateThreadView: View {

    @State private var caption = ""
    @Environment(\.dismiss) private var dismiss

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

                    if !caption.isEmpty {
                        Button {
                            caption = ""
                        } label: {
                            Image(systemName: "xmark")
                                .foregroundStyle(.gray)
                        }

                    }

                }
                .padding()

                Spacer()

            }
            .toolbar {

                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Post") {

                    }
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    .disabled(caption.isEmpty ? true : false)
                }
            }
        }
    }
}

#Preview {
    CreateThreadView()
}
