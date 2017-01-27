//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

// Imports
import Foundation

// Everything Else
if let cases = Int(readLine() ?? "0") {
    var output = [String]()
    
    // Process Input
    for _ in 1...cases {
        if let line = readLine() {
            var funny = true
            let count = line.characters.count
            for offset in 0...(count/2) - 1 {
                let myScalars = line.unicodeScalars
                let firstFrontAscii = Int(myScalars[myScalars.index(myScalars.startIndex, offsetBy: offset)].value)
                let secondFrontAscii = Int(myScalars[myScalars.index(myScalars.startIndex, offsetBy: offset+1)].value)
                let firstBackAscii = Int(myScalars[myScalars.index(myScalars.startIndex, offsetBy: (count-1) - offset)].value)
                let secondBackAscii = Int(myScalars[myScalars.index(myScalars.startIndex, offsetBy: (count-2) - offset)].value)
                    if (abs(firstFrontAscii - secondFrontAscii) != abs(firstBackAscii - secondBackAscii)) {
                    funny = false;
                    break
                }
            }
            output.append(funny ? "Funny" : "Not Funny")
        }
    }
    
    // Print Output
    for line in output {
        print(line)
    }
}
