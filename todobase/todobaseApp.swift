//
//  todobaseApp.swift
//  todobase
//
//  Created by TechnoNext on 15/2/26.
//

import SwiftUI
import SwiftData

@main
struct todobaseApp: App {
    var body: some Scene {
        WindowGroup {
            SplashScreen()
        }
        .modelContainer(for: Todo.self)
    }
}
