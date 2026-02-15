//
//  UserModel.swift
//  todobase
//
//  Created by TechnoNext on 15/2/26.
//
import Foundation
struct UserModel: Codable, Identifiable {
    let id: String
    let email: String
    let firstName: String?
    let lastName: String?
    let avatar: String?
    let created_at: Date?
    let updated_at: Date?
}
