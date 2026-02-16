//
//  RecentTodoListView.swift
//  todobase
//
//  Created by TechnoNext on 16/2/26.
//

import SwiftUI

struct RecentTodoListView: View {
    @State private var todos: [TodoModel] = [
        TodoModel(title: "Do More Exercise", subtitle: "Need to lose 10kg", icon: "figure.walk", status: .completed),
        TodoModel(title: "Read Swift Books", subtitle: "Finish Chapter 5", icon: "book", status: .inProgress),
        TodoModel(title: "Read C++ Books", subtitle: "Finish Chapter 5", icon: "book", status: .inProgress),
        TodoModel(title: "Read Python Books", subtitle: "Finish Chapter 5", icon: "book", status: .inProgress),
        TodoModel(title: "Read New Books", subtitle: "Finish Chapter 5", icon: "book", status: .inProgress)
    ]
    var body: some View {
        ZStack {
            if todos.count == 0 {
                EmptyViewComponent()
            } else {
                ScrollView{
                    Text(todos.count.trailingZeroBitCount == 0 ? "Total \(todos.count) Tasks" : "Total \(todos.count) Task")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.secondary)
                        .frame(maxWidth: .infinity, alignment: .init(horizontal: .leading, vertical: .top))
                        .padding(.vertical)
                    TodoListView(todos: $todos)
                }
                .padding()
            }}
    }
}

#Preview {
    RecentTodoListView()
}
