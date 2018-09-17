//
//  Tasks.swift
//  Task Manager
//
//  Created by Spencer Casteel on 9/12/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import Foundation

class Tasks {
    let title: String
    let task: String
    var completed: Bool
    var dueDate: Date?
    enum priorityChoice: Int {
        case high = 1
        case average
        case low
    }
    var priority: priorityChoice
    
    init(title: String, task: String, priority: priorityChoice) {
        self.title = title
        self.task = task
        self.completed = false
        self.priority = priority
    }
}
