//
//  DashboardView.swift
//  todobase
//
//  Created by TechnoNext on 16/2/26.
//

import SwiftUI

struct DashboardView: View {
    let todos: [Todo]
    var body: some View {
        ScrollView {
            StatsView(totalTasks: todos.count, pendingTasks: todos.count(where: { $0.taskStatus == .notStarted }), completedTasks: todos.count(where: { $0.taskStatus == .completed }), expiredTasks: todos.count(where: { $0.taskStatus == .inProgress }))
            LastFiveTodoList(todos: Array(todos.prefix(5)))
        }
        .padding(.horizontal, 20)
        .padding(.bottom, 20)
    }
}

#Preview {
    //DashboardView()
}
