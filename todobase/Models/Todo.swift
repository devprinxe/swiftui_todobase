//
//  Todo.swift
//  todobase
//
//  Created by TechnoNext on 17/2/26.
//

import SwiftData
import Foundation

@Model
final class Todo: Identifiable {
    // 1. SwiftData uses this as the persistent primary key
    @Attribute(.unique) var id: UUID = UUID()
    
    var taskTitle: String = ""
    var taskDetails: String = ""
    var taskStartDate: Date = Date()
    
    // 2. Dates and Enums work out of the box if they are Codable
    var taskEndDate: Date? // Optional is better than .optional attribute for nil
    var taskPriority: PriorityEnum = PriorityEnum.low
    var taskStatus: TaskStatusEnum = TaskStatusEnum.notStarted

    init(
        taskTitle: String = "",
        taskDetails: String = "",
        taskStartDate: Date = Date(),
        taskEndDate: Date? = nil,
        taskPriority: PriorityEnum = .low,
        taskStatus: TaskStatusEnum = .notStarted
    ) {
        self.id = UUID()
        self.taskTitle = taskTitle
        self.taskDetails = taskDetails
        self.taskStartDate = taskStartDate
        self.taskEndDate = taskEndDate
        self.taskPriority = taskPriority
        self.taskStatus = taskStatus
    }
}
