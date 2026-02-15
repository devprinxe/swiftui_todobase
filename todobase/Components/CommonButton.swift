//
//  CommonButton.swift
//  todobase
//
//  Created by TechnoNext on 15/2/26.
//

import SwiftUI

struct CommonButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .foregroundStyle(.white)
                .padding()
                .background(.mint)
                .cornerRadius(12)
        }
    }
}

#Preview {
    CommonButton(
        title: "Hello",
        action: { print("Hello World!") }
    )
    .padding()  // Add padding around the button in preview
}
