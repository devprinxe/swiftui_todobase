//
//  RecentTodoListView.swift
//  todobase
//
//  Created by TechnoNext on 16/2/26.
//

import SwiftUI

struct RecentTodoListView: View {
    let todos: [Todo]
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
                    TodoListView(todos: todos)
                }
                .padding()
            }}
    }
}

#Preview {
    //RecentTodoListView()
}
