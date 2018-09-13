//
//  manager.swift
//  Task Manager
//
//  Created by Spencer Casteel on 9/12/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import Foundation

class Manager {
    
    private var tasks = [
        Tasks(title: "mail", task: "get the mail"),
        Tasks(title: "shopping", task: "I need shoes")
    ]
    
    func createTask() {
        
        print("Please enter a title:")
        let title = getInput()
        
        print("please enter your task:")
        let task = getInput()
        
        let game = Tasks(title: title, task: task)
        
        tasks.append(game)
        
        print("Successfully added \(title) - \(task).")
    }
    
    func listAllTasks() {
        print("     All Tasks")
        
        for tasks in tasks {
            print("\(tasks.title) - \(tasks.task)")
        }
    }
    
    func listAvailableTasks() {
        print("All Available Tasks")
        
        for task in getCompletedTasks() {
            print("\(task.title) - Rated \(task.task)")
        }
    }

    private func getCompletedTasks() -> [Tasks] {
        var completedTasks = [Tasks]()
        
        for task in tasks {
            if task.completed{
                completedTasks.append(task)
            }
        }
        
        return completedTasks
    }
}

