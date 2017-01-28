//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

//import Foundation

if let cases: Int = Int(readLine() ?? "0") {
    var output: [String] = [String]()
    
    // Process Input
    for _ in 1...cases {
        if let input: String = readLine() {
            // Initializations
            var line: String.CharacterView = input.characters
            var deleteOperations: Int = 0
            var charIndex: String.CharacterView.Index = line.startIndex
            var previousChar: Character = line[charIndex]
            charIndex = line.index(after: charIndex)
            // Loop through the input line, starting at the second character
            while (charIndex != line.endIndex) {
                // Same character as before? Delete
                if (line[charIndex] == previousChar) {
                    line.remove(at: charIndex)
                    deleteOperations += 1
                } else {
                    // Not the same? update the previous character variable, and move on
                    previousChar = line[charIndex]
                    charIndex = line.index(after: charIndex)
                }
            }
            output.append("\(deleteOperations)")
        }
    }
    
    // Print Output
    for line in output {
        print(line)
    }
}
