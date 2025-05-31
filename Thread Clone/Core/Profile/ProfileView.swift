//
//  ProfileView.swift
//  Thread Clone
//
//  Created by Aung Myat Moe on 31/05/2025.
//

import SwiftUI

enum ThreadFilterTabs: Int, CaseIterable, Identifiable {
    case threads, replies, likes

    var title: String {
        switch self {
        case .threads:
            return "Threads"
        case .replies:
            return "Replies"
        case .likes:
            return "Likes"
        }
    }

    var id: Int { return self.rawValue }

}

struct ProfileView: View {

    @State private var selectedTabFilter: ThreadFilterTabs = .threads
    @Namespace var namespace
    @State private var showSheet: Bool = false

    private var filterBarWidth: CGFloat {
        let count = CGFloat(ThreadFilterTabs.allCases.count)
        return UIScreen.main.bounds.width / count - 12
    }

    var body: some View {
        ScrollView {
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 12) {
                        VStack(alignment: .leading) {
                            Text("Aung Myat Moe")
                                .font(.title2)
                                .fontWeight(.bold)

                            Text("@aungmyatmoe")
                                .font(.caption)
                                .fontWeight(.medium)
                                .foregroundStyle(.secondary)
                        }

                        Text("Software Engineer and Saleman")
                            .font(.caption)
                            .foregroundStyle(.primary)

                        Text("2 Followers")
                            .font(.caption)
                            .foregroundStyle(.secondary)

                    }

                    Spacer()

                    ProfileImageCircleView()

                }
                .padding(.horizontal)

                Button {
                    showSheet = true
                } label: {
                    Text("Follow")
                        .frame(maxWidth: .infinity)
                        .frame(height: 32)
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .background(Color.black)
                        .fontWeight(.bold)
                        .cornerRadius(8)
                }
                .padding()
            }

            VStack {
                HStack {
                    ForEach(ThreadFilterTabs.allCases) { filter in
                        HStack {
                            VStack {
                                Text(filter.title)
                                    .fontWeight(
                                        selectedTabFilter == filter
                                            ? .bold : .medium
                                    )

                                if selectedTabFilter == filter {
                                    Rectangle()
                                        .frame(width: filterBarWidth, height: 2)
                                        .foregroundColor(.black)
                                        .matchedGeometryEffect(
                                            id: "filterItem",
                                            in: namespace
                                        )

                                } else {
                                    Rectangle()
                                        .frame(width: filterBarWidth, height: 2)
                                        .foregroundColor(.clear)
                                }
                            }
                        }
                        .onTapGesture {
                            withAnimation(.spring()) {
                                selectedTabFilter = filter
                            }
                        }

                    }
                }

                ForEach(0..<10) { _ in
                    ThreadCellView()
                }
            }
            .sheet(isPresented: $showSheet) {
                EditProfileView(isPresented: $showSheet)
            }

        }
    }
}

#Preview {
    ProfileView()
}
