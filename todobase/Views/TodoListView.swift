//
//  TodoListView.swift
//  todobase
//
//  Created by TechnoNext on 16/2/26.
//

import SwiftUI

struct TodoListView: View {
    @Binding var todos: [TodoModel]
    var body: some View {
        LazyVStack(spacing: 12){
            ForEach($todos) { $task in // Using $ to pass a binding to each row
                TodoItemView(
                    title: task.title ?? "",
                    subtitle: task.subtitle ?? "",
                    iconName: task.icon ?? "",
                    selectedStatus: $task.status
                )
            }
        }
    }
}

#Preview {
//    TodoListView()
}
