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
    var body: some View {
        LazyVGrid(columns: adaptiveColumn, spacing: 10)  {
            StatsCardComponent(title: "Total Tasks",iconName: "command.circle",cardColor: .mint)
            StatsCardComponent(title: "Pending Tasks",iconName: "arrow.trianglehead.clockwise",cardColor: .orange)
            StatsCardComponent(title: "Completed Tasks",iconName: "checkmark.seal",cardColor: .green)
            StatsCardComponent(title: "Expired Tasks",iconName: "minus.circle",cardColor: .red)
        }
    }
}

#Preview {
    StatsView()
}
