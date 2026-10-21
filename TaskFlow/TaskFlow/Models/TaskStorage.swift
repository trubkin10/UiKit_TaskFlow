//
//  TaskStorage.swift
//  TaskFlow
//
//  Created by Александр Трубкин on 19.10.2026.
//

import Foundation

final class TaskStorage {
    static let storage = TaskStorage()
    private init() {}
    
    private(set) var tasks: [Task] = []
}

