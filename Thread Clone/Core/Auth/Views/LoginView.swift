//
//  LoginView.swift
//  Thread Clone
//
//  Created by Aung Myat Moe on 29/05/2025.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        NavigationStack {
            VStack {
                Spacer()

                Image("app-icon")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .scaledToFit()

                TextField("Enter your email", text: $email)
                    .autocapitalization(.none)
                    .modifier(ThreadsTextFieldModifier())

                SecureField("Enter your password", text: $password)
                    .modifier(ThreadsTextFieldModifier())

                NavigationLink {
                    Text("Forgot Password")
                } label: {
                    Text("Forgot Password?")
                }
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundStyle(.black)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, 24)
                .padding(.vertical)

                Button {
                  
                } label: {
                    Text("Login")
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
                    RegisterView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 5) {
                        Text("Dont't you have an account?")
                        Text("Sign Up")
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
    LoginView()
}
