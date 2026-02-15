//
//  HomeView.swift
//  todobase
//
//  Created by TechnoNext on 15/2/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            
            ZStack(alignment: .bottomTrailing) {
                
                VStack{
                    TabView{
                        Text("First")
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
                
                Button {
                    // Action
                } label: {
                    Image(systemName: "plus")
                        .font(.title.weight(.semibold))
                        .padding()
                        .background(Color.pink)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                        .shadow(radius: 4, x: 0, y: 4)
                    
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 60, trailing: 20))
            }
        }
    }
}

#Preview {
    HomeView()
}
