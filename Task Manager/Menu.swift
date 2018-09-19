//
//  Menu.swift
//  Task Manager
//
//  Created by Spencer Casteel on 9/12/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import Foundation

class Menu {
    
    var manager = Manager()
    
    var shouldQuit = false
    
    func go() { // 
        printMenu()
    
        repeat {
            
            var input = getInput()
            
            while validateInput(input) == false {
                print("Invalid input")
                printMenu()
                input = getInput()
            }
            
            handleInput(input)
            
        } while !shouldQuit
    }
    
    func printMenu() {  // displays the menu
        print("""
                    Menu
            1. Create a new tasks
            2. List of all tasks
            3. List of only uncompleted tasks
            4. List of only completed tasks
            5. Mark a task as complete
            6. Mark a completed task as incomplete
            7. Delete a task.
            8. Display the menu
            9. Exit the program.
            
            """)
    }
    
    // manages the users input and conects it to the function that needs to be ran
    func handleInput(_ input: String) {
        switch input {
        case "1":
            manager.createTask()
            sleep(3)
            printMenu()
        case "2":
            manager.listAllTasks()
            sleep(3)
            printMenu()
        case "3":
            manager.listUncompletedTasks()
            sleep(3)
            printMenu()
        case "4":
           manager.listCompletedTasks()
           sleep(3)
           printMenu()
        case "5":
            manager.completeTask()
            sleep(3)
            printMenu()
        case "6":
            manager.uncompleteTask()
            sleep(3)
            printMenu()
        case "7":
            manager.deleteTask()
            sleep(3)
            printMenu()
        case "8":
            printMenu()
        case "9":
            quit()
        default:
            break
        }
    }
    
    func quit() {  // lets user quit
        print("Thanks for using your task manager")
        shouldQuit = true
    }
}
