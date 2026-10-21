//
//  Task.swift
//  TaskFlow
//
//  Created by Александр Трубкин on 19.10.2026.
//

import Foundation

struct Task {
    let idTask: UUID
    let nameTask: String
    let descriptionTask: String?
    var isCompleted: Bool
}
