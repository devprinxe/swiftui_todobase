//
//  LastFiveTodoList.swift
//  todobase
//
//  Created by TechnoNext on 16/2/26.
//

import SwiftUI

struct LastFiveTodoList: View {
    @State private var todos: [TodoModel] = [
        TodoModel(title: "Do More Exercise", subtitle: "Need to lose 10kg", icon: "figure.walk", status: .completed),
        TodoModel(title: "Read Swift Books", subtitle: "Finish Chapter 5", icon: "book", status: .inProgress)
    ]
    var body: some View {
        if todos.count == 0 {
            EmptyViewComponent()
        } else {
            VStack {
                Text("Recently Added Todos")
                    .font(.title)
                    .bold()
                    .foregroundColor(.primary)
                    .padding()
                TodoListView(todos: $todos)
            }
        }}
}

#Preview {
    LastFiveTodoList()
}
