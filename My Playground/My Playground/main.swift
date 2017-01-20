//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

// Imports
import Foundation

// Declarations
var input:String?

// Implementations
print("Please enter a test string: ")
input = readLine()
guard var input = input else {
    print("No test string found")
    exit(1)
}
let fileName = "output.txt"//Bundle.main.bundlePath + "/output.txt"
do{
    input.append("\n")
    try input.write(toFile: fileName, atomically: true, encoding: .ascii)
    print("Written to file @ \(fileName)")
} catch{
    print("Couldn't write shit")
}
