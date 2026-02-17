//
//  TodoItemView.swift
//  todobase
//
//  Created by TechnoNext on 16/2/26.
//

import SwiftUI

struct TodoItemView: View {
    let title: String
    let subtitle: String?
    let iconName: String
    @Binding var selectedStatus: TaskStatusEnum
    var body: some View {
        HStack(spacing: 15) {
                    Image(systemName: iconName)
                        .foregroundColor(.brand)
                        .frame(width: 30)
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text(title)
                            .font(.body)
                        if let subtitle = subtitle {
                            Text(subtitle)
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                    }
                    
                    Spacer()
            Picker("Status", selection: $selectedStatus) {
                        ForEach(TaskStatusEnum.allCases) { status in
                            // 3. Tag must match the @State type (TaskStatusEnum)
                            Text(status.title)
                                .font(.caption)
                                .foregroundColor(.brand)
                                .tag(status)
                        }
                    }
                    .pickerStyle(.menu)
                    
                }
                .contentShape(Rectangle())
                .padding()
                .background(.brand.opacity(0.1))
                .cornerRadius(8)
    }
}

#Preview {
    TodoItemView(
        title: "Do More Reading", subtitle: "Add more time to read books", iconName: "book",
        selectedStatus: .constant(.inProgress)
    )
}
