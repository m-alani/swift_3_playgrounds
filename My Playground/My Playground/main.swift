//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read the string
let s = readLine()!

// Split the input
var intHours = Int(s.substring(with: s.startIndex..<s.index(s.startIndex, offsetBy: 2))) ?? 0
var hours = String(s.substring(with: s.startIndex..<s.index(s.startIndex, offsetBy: 2))) ?? ""
let minutes = String(s.substring(with: s.index(s.startIndex, offsetBy: 3)..<s.index(s.startIndex, offsetBy: 5))) ?? "00"
let seconds = String(s.substring(with: s.index(s.startIndex, offsetBy: 6)..<s.index(s.startIndex, offsetBy: 8))) ?? "00"

// Check for AM/PM
let isAM = (String(s.substring(with: s.index(s.startIndex, offsetBy: 8)..<s.index(s.startIndex, offsetBy: 10)))) == "PM"
    ? false
    : true

if (intHours == 12) {
    hours = isAM ? "00" : "12"
} else {
    hours = isAM ? hours : "\(intHours + 12)"
}

// Print Output
print("\(hours):\(minutes):\(seconds)")
