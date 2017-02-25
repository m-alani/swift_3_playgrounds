//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// In our case, N & M doesn't matter, as we're reading the input in 1 line always.
let uselessNumber = Int(readLine() ?? "0") ?? 0

// Read the test case into an array of strings (Swift readline() limitation)
let inputString = String(readLine() ?? "")!.components(separatedBy: " ")
// Convert the strings into an array of integers
let listA = inputString.map({Int($0) ?? 0})
