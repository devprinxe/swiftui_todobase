//
//  StatsCardComponent.swift
//  todobase
//
//  Created by TechnoNext on 16/2/26.
//

import SwiftUI

struct StatsCardComponent: View {
    let title: String
    let iconName: String
    let cardColor: Color
    let count: Int
    
    var body: some View {
        VStack(alignment: .leading){
            Image(systemName: iconName)
                .font(.system(size: 40, weight: .bold))
                .frame(width: 40, height: 40)
                .foregroundColor(cardColor)
            Text(title)
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(cardColor)
                .lineLimit(1)                          // Ensures it stays on one line
                .truncationMode(.tail)                 // Equivalent to TextOverflow.ellipsis
                .frame(width: 140, alignment: .leading)
                .padding(.top, 10)
            Text(String(count))
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(cardColor)
        }
        .padding(20)
        .background(cardColor.opacity(0.1))
        .cornerRadius(10)
    }
}

#Preview {
    StatsCardComponent(title: "Total Tasks",iconName: "command.circle",cardColor: .brand,count: 100)
}
