//
//  Utilities.swift
//  Task Manager
//
//  Created by Spencer Casteel on 9/12/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import Foundation

func validateInput(_ input: String) -> Bool {
    if input == "help" {
        return true
    }
    
    let menuOptions = Array(1...9)
    
    guard let number = Int(input) else { return false }
    
    return menuOptions.contains(number)
}

func getInput() -> String {
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

func getIndex(arrayCount: Int) -> Int {
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
