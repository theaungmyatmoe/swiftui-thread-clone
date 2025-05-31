//
//  EditProfileVieww.swift
//  Thread Clone
//
//  Created by Aung Myat Moe on 31/05/2025.
//

import SwiftUI

struct EditProfileView: View {
    @State var bio: String = ""
    @State var link: String = ""
    @State var isPrivateProfile: Bool = false
    @Binding var isPresented: Bool

    var body: some View {

        NavigationStack {
            ZStack {
                Color(.systemGray6)
                    .ignoresSafeArea(edges: [.bottom])

                VStack {
                    VStack {
                        HStack(alignment: .top) {
                            VStack(alignment: .leading) {
                                Text("Name")
                                    .font(.headline)
                                    .fontWeight(.semibold)

                                Text("Aung Myat Moe")
                                    .font(.body)
                            }

                            Spacer()

                            ProfileImageCircleView()

                        }
                        Divider()
                    }

                    VStack {
                        HStack(alignment: .top) {
                            VStack(alignment: .leading) {
                                Text("Bio")
                                    .font(.headline)
                                    .fontWeight(.semibold)

                                TextField("Enter your bio ...", text: $bio)
                            }
                        }
                        Divider()
                    }

                    VStack {
                        HStack(alignment: .top) {
                            VStack(alignment: .leading) {
                                Text("Link")
                                    .font(.headline)
                                    .fontWeight(.semibold)

                                TextField("Enter your link ...", text: $link)
                            }
                        }

                        Divider()
                    }

                    VStack {
                        HStack(alignment: .center) {
                            Text("Private Profile")
                                .font(.headline)
                                .fontWeight(.semibold)

                            Spacer()

                            Toggle(
                                "",
                                isOn: $isPrivateProfile
                            )

                        }
                    }

                }
                .padding()
                .background(.white)
                .cornerRadius(20)
                .overlay {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color(.systemGray), lineWidth: 1)
                }
                .padding()
                .navigationTitle("Edit Profile")
                .navigationBarTitleDisplayMode(.inline)
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        isPresented = false
                    } label: {
                        Text("Cancel")
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                    } label: {
                        Text("Done")
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                    }
                }
            }
        }

    }
}

#Preview {
    EditProfileView(isPresented: .constant(true))
}
