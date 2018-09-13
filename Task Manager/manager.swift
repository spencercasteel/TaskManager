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
    
    func listCompletedTasks() {
        print("All Completed Tasks")
        
        for task in getCompletedTasks() {
            print("\(task.title) - \(task.task)")
        }
    }
    
    func listUnavailableTasks() {
        print("All Unavailable Tasks")
        
        for task in getUncompletedTasks() {
            print("\(task.title) - \(task.task)")
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


private func getUncompletedTasks() -> [Tasks] {
    var uncompletedTasks = [Tasks]()
    
    for task in tasks {
        if !task.completed{
            uncompletedTasks.append(task)
        }
    }
    
    return uncompletedTasks
}
}
