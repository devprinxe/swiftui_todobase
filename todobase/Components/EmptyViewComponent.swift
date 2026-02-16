//
//  EmptyViewComponent.swift
//  todobase
//
//  Created by TechnoNext on 16/2/26.
//

import SwiftUI

struct EmptyViewComponent: View {
    var body: some View {
        VStack{
            Image(systemName: "list.bullet.clipboard.fill")
                .font(.system(size: 100))
                .foregroundColor(.primary)
                .padding()
            
            Text("No Task Found")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
            Text("Start adding tasks to get started!")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}

#Preview {
    EmptyViewComponent()
}
