//
//  TodoModel.swift
//  todobase
//
//  Created by TechnoNext on 16/2/26.
//

import Foundation

struct TodoModel: Codable, Identifiable {
    var id: UUID = UUID()
    var title: String?
    var subtitle: String?
    var icon: String?
    var status: TaskStatusEnum = .notStarted
}
