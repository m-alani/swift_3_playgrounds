//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// In our case, N & M doesn't matter, as we're reading the input in 1 line always.
var unusedInput = readLine()
// Read the first list into an array of strings (Swift readline() limitation)
var inputString = String(readLine() ?? "")!.components(separatedBy: " ")
// Convert the strings into an array of integers
var listA = inputString.map({Int($0) ?? 0})

// Read the second list into an array of strings (Swift readline() limitation)
unusedInput = readLine()
inputString = String(readLine() ?? "")!.components(separatedBy: " ")
// Convert the strings into an array of integers
let listB = inputString.map({Int($0) ?? 0})

// Process the lists and create an output array for the missing numbers
var output = [Int]()
for number in listB {
    if let index = listA.index(of: number) {
        listA.remove(at: index)
    } else {
        output.append(number)
    }
}

// Sort then print the output
if output.count > 0 {
    output.sort()
    print(output[0], separator: "", terminator: "")
    for index in 1..<output.count {
        print(" \(output[index])", separator: "", terminator: "")
    }
    print()
}
