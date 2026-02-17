//
//  LastFiveTodoList.swift
//  todobase
//
//  Created by TechnoNext on 16/2/26.
//

import SwiftUI
import SwiftData

struct LastFiveTodoList: View {
    let todos: [Todo]
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
                TodoListView(todos: todos)
            }
        }}
}

#Preview {
    //LastFiveTodoList()
}
