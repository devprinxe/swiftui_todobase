//
//  OnboardItem.swift
//  todobase
//
//  Created by TechnoNext on 15/2/26.
//

import SwiftUI

struct OnboardItem: View {
    let title: String
    let subtitle: String
    let image: String
    
    var body: some View {
        VStack{
            Image(image)
                .resizable()
                .scaledToFit()
                .foregroundColor(.mint)
                .frame(height: 250)
                .padding()
            
            Text(title)
                .font(.largeTitle)
                .bold()
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding(EdgeInsets(top: 0, leading:20, bottom: 10, trailing: 20))
            
            Text(subtitle)
                .font(.subheadline)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding(EdgeInsets(top: 0, leading:20, bottom: 10, trailing: 20))
            
        }
    }
}

#Preview {
    OnboardItem(
        title: "Welcome To Todo Base", subtitle: "Manage your busy life with ease because Todobase is at your service 24/7. Make sure you allow the notification permission to update you on time", image: "onboard1",
    )
}
