//
//  NetworkImageComponent.swift
//  todobase
//
//  Created by TechnoNext on 16/2/26.
//

import SwiftUI

struct NetworkImageComponent: View {
    let imageUrl: URL?
    let width: CGFloat?
    let height: CGFloat?
    let cornerRadius: CGFloat?
    var body: some View {
        AsyncImage(url: imageUrl){ phase in
            switch phase {
            case .empty:
                // 1. While loading, show a spinner
                ProgressView()
                    .frame(width: width ?? 50, height: height ?? 50)
                
            case .success(let image):
                // 2. Image downloaded successfully
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: width ?? 50, height: height ?? 50)
                    .clipShape(RoundedRectangle(cornerRadius: cornerRadius ?? 10))
                    .ignoresSafeArea()
                
            case .failure:
                // 3. Error state (wrong URL or no internet)
                Image(systemName: "photo")
                    .resizable()
                    .frame(width: width ?? 50, height: height ?? 50)
                    .foregroundColor(.gray)
                
            @unknown default:
                Image(systemName: "photo")
                    .resizable()
                    .frame(width: width ?? 50, height: height ?? 50)
                    .foregroundColor(.gray)
            }
        }
    }
}

#Preview {
    NetworkImageComponent(imageUrl: URL(string: "https://placehold.co/600x400/png"),width: 600,height: 400,cornerRadius: 0)
}
