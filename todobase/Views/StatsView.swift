//
//  StatsView.swift
//  todobase
//
//  Created by TechnoNext on 16/2/26.
//

import SwiftUI

struct StatsView: View {
    private let adaptiveColumn = [
        GridItem(.adaptive(minimum: 150), spacing: 10)
    ]
    let totalTasks: Int
    let pendingTasks: Int
    let completedTasks: Int
    let expiredTasks: Int
    
    var body: some View {
        LazyVGrid(columns: adaptiveColumn, spacing: 10)  {
            StatsCardComponent(title: "Total Tasks",iconName: "command.circle",cardColor: .brand,count: totalTasks)
            StatsCardComponent(title: "Pending Tasks",iconName: "arrow.trianglehead.clockwise",cardColor: .orange,count: pendingTasks)
            StatsCardComponent(title: "Completed Tasks",iconName: "checkmark.seal",cardColor: .green,count: completedTasks)
            StatsCardComponent(title: "Expired Tasks",iconName: "minus.circle",cardColor: .red,count: expiredTasks)
        }
    }
}

#Preview {
    StatsView(totalTasks: 100, pendingTasks: 120, completedTasks: 430, expiredTasks: 234)
}
