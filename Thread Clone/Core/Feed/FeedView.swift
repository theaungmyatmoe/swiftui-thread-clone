//
//  FeedView.swift
//  Thread Clone
//
//  Created by Aung Myat Moe on 31/05/2025.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0..<20) { _ in
                        ThreadCellView()
                    }
                }
            }
            .refreshable {

            }
            .navigationTitle(Text("Feed"))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    Image(
                        systemName:
                            "arrow.trianglehead.counterclockwise.rotate.90"
                    )
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
