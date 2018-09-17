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
        Tasks(title: "mail", task: "get the mail", priority: Tasks.priorityChoice(rawValue: 1)!),
        Tasks(title: "shopping", task: "I need shoes", priority: Tasks.priorityChoice(rawValue: 2)!)
    ]
    
    func createTask() {   // greates a task for the user
        
        print("Please enter a title for the task:")
        let title = getInput()
        
        print("please enter your task:")
        let task = getInput()
        
        print("please enter the priority of the task: High, Average or low")
        var taskPriority: Tasks.priorityChoice!
        
        let priorityInput = getPriority()
        
        if priorityInput == "high" {
            
            taskPriority = .high
            
        } else if priorityInput == "average" {
            
            taskPriority = .average
            
        } else if priorityInput == "low" {
            taskPriority = .low
        }
        
        tasks.append(Tasks(title: title, task: task, priority: taskPriority))
       
        let game = Tasks(title: title, task: task, priority: taskPriority)  // setting the due date
        
        let today = Date()
        
        let calendar = Calendar(identifier: .gregorian)
        let due = calendar.date(byAdding: .day, value: 14, to: today)
        
        game.dueDate = due
        tasks.append(game)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        
        print("Successfully added \(game.title). complete by: \(dateFormatter.string(from: game.dueDate!)).")
        
    }
        
    
    
    func listAllTasks() { // lists all tasks
        print("     All Tasks")
        
        for tasks in tasks {
            print("\(tasks.title)")
        }
    }
    
    func listCompletedTasks() { // lists all the completedTasks
        print("All Completed Tasks")
        
        for task in getCompletedTasks() {
            print("\(task.title) - \(task.task)")
        }
    }
    
    func listUncompletedTasks() {  // lists uncompleted tasks
        print("All Uncompleted Tasks")
        
        for task in getUncompletedTasks() {
            print("\(task.title) - \(task.task)")
        }
    }
    
    private func getCompletedTasks() -> [Tasks] {  // checks for completed tasks
        var completedTasks = [Tasks]()
        
        for task in tasks {
            if task.completed{
                completedTasks.append(task)
            }
        }
        
        return completedTasks
    }
    
    
    private func getUncompletedTasks() -> [Tasks] {  // checks for uncompleted tasks
        var uncompletedTasks = [Tasks]()
        
        for task in tasks {
            if !task.completed{
                uncompletedTasks.append(task)
            }
        }
        
        return uncompletedTasks
    }
    
    func completeTask() { // lets user complete task
        print("Uncompleted tasks to complete")
        
        let uncompletedTasks = getUncompletedTasks()
        
        for (index, task) in getUncompletedTasks().enumerated() {
            print("\(index). \(task.title)")
        }
        
        print("Please enter index of task you have completed:")
        
        let index = getIndex(arrayCount: uncompletedTasks.count)
        let task = uncompletedTasks[index]
        
        task.completed = true
        
        print("Successfully completed \(task.title).")
    }
    
    func uncompleteTask() {   // lets user uncomplete task
        print("completed tasks that you need to uncomlete")
        
        let completedTasks = getCompletedTasks()
        
        for (index, task) in getCompletedTasks().enumerated() {
            print("\(index). \(task.title)")
        }
        
        print("Please enter index of task that is not completed:")
        
        let index = getIndex(arrayCount: completedTasks.count)
        let task = completedTasks[index]
        
        task.completed = false
        
        print("Successfully uncompleted \(task.title).")
    }
    
    func deleteTask() {  // lets user delete task

        print("Tasks Available to delete")
        
        for (index, task) in tasks.enumerated() {
            print("\(index). \(task.title)")
        }
        
        print("Please enter the index of the game you'd like to remove:")
        
        let index = getIndex(arrayCount: tasks.count)
        
        let task = tasks.remove(at: index)
        
        print("Successfully deleted \(task.title)")
    }
}
