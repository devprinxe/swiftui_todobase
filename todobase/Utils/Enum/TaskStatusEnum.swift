//
//  TaskStatusEnum.swift
//  todobase
//
//  Created by TechnoNext on 16/2/26.
//

import Foundation

enum TaskStatusEnum: String, Codable, CaseIterable, Identifiable {
    case notStarted
    case inProgress
    case completed
    
    var id: String { self.rawValue }
    
    var title: String {
        switch self {
        case .notStarted: return "Not Started"
        case .inProgress: return "In Progress"
        case .completed: return "Completed"
        }
    }
}
