//
//  AddTaskView.swift
//  todobase
//
//  Created by TechnoNext on 17/2/26.
//

import SwiftUI
import SwiftData

struct AddTaskView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss // To close the sheet
    
    // Form State
    @State private var title: String = ""
    @State private var details: String = ""
    @State private var priority: PriorityEnum = .low
    @State private var startDate: Date = Date()

    var body: some View {
        NavigationStack {
            Form {
                Section("General Info") {
                    TextField("Task Title", text: $title)
                    TextField("Details", text: $details, axis: .vertical)
                        .lineLimit(3...5)
                }
                
                Section("Settings") {
                    Picker("Priority", selection: $priority) {
                        ForEach(PriorityEnum.allCases) { p in
                            Text(p.title).tag(p)
                        }
                    }
                    DatePicker("Start Date", selection: $startDate)
                }
            }
            .navigationTitle("New Task")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") { dismiss() }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        saveTask()
                    }
                    .disabled(title.isEmpty) // Basic validation
                }
            }
        }
    }

    private func saveTask() {
        // 1. Create the model instance
        let newTask = Todo(
            taskTitle: title,
            taskDetails: details,
            taskStartDate: startDate,
            taskPriority: priority,
            taskStatus: .notStarted
        )
        
        // 2. Insert into SwiftData context
        modelContext.insert(newTask)
        
        // 3. Close the sheet
        dismiss()
    }
}

#Preview {
    AddTaskView()
}
