//
//  ExploreView.swift
//  Thread Clone
//
//  Created by Aung Myat Moe on 31/05/2025.
//

import SwiftUI

struct ExploreView: View {

    @State var searchText: String = ""

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0..<20) { _ in
                        VStack {
                            HStack {
                                ProfileImageCircleView()

                                VStack(alignment: .leading) {
                                    Text("aungmyatmoe")
                                        .font(.caption)
                                        .fontWeight(.medium)

                                    Text("SwiftUI look really cool! 😄")
                                        .font(.caption)
                                }

                                Spacer()

                                Text("Follow")
                                    .font(.caption)
                                    .foregroundColor(.black)
                                    .frame(width: 100, height: 32)
                                    .overlay(content: {
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(
                                                Color(.systemGray3),
                                                lineWidth: 1
                                            )
                                    })

                            }
                            .padding()

                            Divider()
                                .padding(.horizontal)
                        }
                    }

                }
            }
            .navigationTitle("Explore")
            .searchable(text: $searchText, prompt: "Search")
        }
    }
}

#Preview {
    ExploreView()
}
