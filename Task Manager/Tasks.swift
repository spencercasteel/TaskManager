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
    
    init(title: String, task: String) {
        self.title = title
        self.task = task
        self.completed = false
        self.dueDate = nil
    }
}
