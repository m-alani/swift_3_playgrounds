//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read the input
let money = Int(String(readLine()!)!.components(separatedBy: " ")[0])!
let keyboards = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!}).sorted(by: {$0 < $1}) // ascending
let usbs = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!}).sorted(by: {$0 >= $1}) // descending

// Process the case
var output = -1
var keyIndex = 0, usbIndex = 0
while (keyIndex < keyboards.count && usbIndex < usbs.count) {
    let sum = keyboards[keyIndex] + usbs[usbIndex]
    if (sum <= money) {
        output = (output > sum) ? output : sum
        keyIndex += 1
    } else {
        usbIndex += 1
    }
}

// Print the output
print(output)
