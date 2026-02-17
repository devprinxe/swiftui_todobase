//
//  PriorityEnum.swift
//  todobase
//
//  Created by TechnoNext on 17/2/26.
//
import Foundation

enum PriorityEnum: String, Codable, CaseIterable, Identifiable {
    
    case low
    case medium
    case high
    case urgent
    
    var id: String { self.rawValue }
    
    var title: String {
        switch self {
        case .low: return "Low"
        case .medium: return "Medium"
        case .high: return "High"
        case .urgent: return "Urgent"
        }
    }
    
    var icon: String {
        switch self {
        case .low: return "speaker.wave.1"
        case .medium: return "speaker.wave.2"
        case .high: return "speaker.wave.3"
        case .urgent: return "speaker.wave.3.fill"
        }
    }
    
    
    
}
