//
//  TodoListView.swift
//  todobase
//
//  Created by TechnoNext on 16/2/26.
//

import SwiftUI

struct TodoListView: View {
    let todos: [Todo]
    @State private var selectedTask: Todo?
    var body: some View {
        LazyVStack(spacing: 12){
            ForEach(todos) { task in
                TodoItemView(
                    title: task.taskTitle,
                    subtitle: task.taskDetails,
                    iconName: task.taskPriority.icon,
                    selectedStatus: Binding(
                        get: {task.taskStatus },
                        set: { task.taskStatus = $0 }
                    )
                )
                .onTapGesture {
                    selectedTask = task
                }
            }
            .sheet(item: $selectedTask) { task in
                        AddTaskView(todo: task)
                            .presentationDetents([.medium, .large])
                    }
        }
    }
}

#Preview {
   //TodoListView()
}
