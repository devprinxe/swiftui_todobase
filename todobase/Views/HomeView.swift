//
//  HomeView.swift
//  todobase
//
//  Created by TechnoNext on 15/2/26.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    @State private var isShowingSettings = false
    @Query(sort: \Todo.taskStartDate,
           order: .reverse,) private var todos: [Todo]
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading){
                TabView{
                    DashboardView(todos: todos)
                        .tabItem {
                            Label("Home", systemImage: "house")
                        }
                    RecentTodoListView(todos: todos)
                        .tabItem {
                            Label("List", systemImage: "list.bullet.below.rectangle")
                        }
                    
                    Text("Third")
                        .tabItem {
                            Label("Notification", systemImage: "bell.badge")
                        }
                    Text("Fourth")
                        .tabItem {
                            Label("Profile", systemImage: "person.crop.circle")
                        }
                }
            }
        }
        .navigationTitle(Text("Home"))
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    // 3. Toggle the state on click
                    isShowingSettings = true
                } label: {
                    // 4. Use a System Image for the + icon
                    Image(systemName: "plus")
                }
            }
        }
        .toolbarBackground(.visible, for: .navigationBar)
        // 5. Attach the sheet to the view
        .sheet(isPresented: $isShowingSettings) {
            AddTaskView(todo: nil)
                .presentationDetents([.medium, .large])
        }
    }
}

#Preview {
    HomeView()
}
