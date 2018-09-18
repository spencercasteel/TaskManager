//
//  Utilities.swift
//  Task Manager
//
//  Created by Spencer Casteel on 9/12/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import Foundation

func validateInput(_ input: String) -> Bool { // validates input for menu
    if input == "help" {
        return true
    }
    
    let menuOptions = Array(1...9)
    
    guard let number = Int(input) else { return false }
    
    return menuOptions.contains(number)
}

func getInput() -> String {  // gets input from user
    var input: String? = nil
    
    repeat {
        let line = readLine()!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if line != "" {
            input = line
        } else {
            print("Invalid input")
        }
    } while input == nil
    
    return input!
}

func getIndex(arrayCount: Int) -> Int { // gets index from user
    var index: Int? = nil
    
    repeat {
        let input = Int(readLine()!)
        
        if input == nil {
            print("Please enter a valid index.")
            continue
        }
        
        if input! < 0 || input! >= arrayCount {
            print("Please enter a valid index.")
            continue
        }
        
        index = input
    } while index == nil
    
    return index!
}

func getPriority() -> String {  // validates input for priority
    
    var input: String? = nil
    
    repeat {
        
        let line = readLine()!.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        
        if line == "low" || line == "average" || line == "high"  {
            
            input = line
            
        } else {
            
            print("Invalid input")
        }
        
    } while input == nil
    
    return input!
}

func Password() {  // password for login
    let menu = Menu()
   
    var input: String? = nil
    
    repeat {
        
        let line = readLine()!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if line != "" {
            input = line
        } else {
            print("Invalid input.")
        }
    } while input == nil
    
    if input == "1" {
        menu.go()
    } else if input == "quit" {
        menu.quit()
    } else {
        print("wrong password, try again:")
        Password()
    }
}
