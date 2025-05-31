//
//  RegisterView.swift
//  Thread Clone
//
//  Created by Aung Myat Moe on 31/05/2025.
//

import SwiftUI

struct RegisterView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var fullname: String = ""
    @State private var username: String = ""

    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()

                Image("app-icon")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .scaledToFit()

                TextField("Enter your email", text: $email)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)

                SecureField("Enter your password", text: $password)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)

                TextField("Enter your full name", text: $fullname)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)

                TextField("Enter your full name", text: $fullname)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)

                Button {
                    dismiss()
                } label: {
                    Text("Register")
                        .frame(width: 350, height: 44)
                        .background(.black)
                        .foregroundStyle(.white)
                        .cornerRadius(10)
                        .fontWeight(.semibold)
                        .padding()
                }

                Spacer()

                Divider()
                NavigationLink {
                    LoginView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 5) {
                        Text("Already have an account?")
                        Text("Sign In")
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    .font(.footnote)
                    .padding(.top, 12)

                }

            }

        }
    }

}

#Preview {
    RegisterView()
}
