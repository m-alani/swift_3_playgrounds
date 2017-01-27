//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

// Imports
import Foundation

if let cases = Int(readLine() ?? "0") {
    var output = [String]()
    
    // Process Input
    for _ in 1...cases {
        if let line: String = readLine() {
            var funny = true
            let myString = line.utf16
            let count = myString.count
            for offset in 0...(count/2) - 1 {
                let firstFrontAscii = Int(myString[myString.index(myString.startIndex, offsetBy: offset)])
                let secondFrontAscii = Int(myString[myString.index(myString.startIndex, offsetBy: offset+1)])
                let firstBackAscii = Int(myString[myString.index(myString.startIndex, offsetBy: (count-1) - offset)])
                let secondBackAscii = Int(myString[myString.index(myString.startIndex, offsetBy: (count-2) - offset)])
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
