//
//  DashboardView.swift
//  todobase
//
//  Created by TechnoNext on 16/2/26.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        ScrollView {
            StatsView()
            LastFiveTodoList()
        }
        .padding(.horizontal, 20)
        .padding(.bottom, 20)
    }
}

#Preview {
    DashboardView()
}
