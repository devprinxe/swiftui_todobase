//
//  HomeView.swift
//  todobase
//
//  Created by TechnoNext on 15/2/26.
//

import SwiftUI

struct HomeView: View {
    @State private var isShowingSettings = false
    var body: some View {
        NavigationStack {
            VStack{
                TabView{
                    DashboardView()
                        .tabItem {
                            Label("Home", systemImage: "house")
                        }
                    Text("Second")
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
        // 5. Attach the sheet to the view
        .sheet(isPresented: $isShowingSettings) {
            DashboardView() // The view you want to show
        }
    }
}

#Preview {
    HomeView()
}
