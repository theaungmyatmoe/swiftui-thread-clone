//
//  ThreadsTextFieldModifier.swift
//  Thread Clone
//
//  Created by Aung Myat Moe on 31/05/2025.
//

import Foundation
import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
