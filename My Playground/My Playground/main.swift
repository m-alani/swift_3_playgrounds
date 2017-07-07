//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read the inputs
let jumpDistance = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})[1]
let clouds = String(readLine()!)!.components(separatedBy: " ").map({$0 == "1"}) // true for a thunder cloud, false otherwise

// Process the problem
var energy = 100
var location = 0
repeat {
  location = (location + jumpDistance) % clouds.count
  energy = (clouds[location]) ? energy - 3 : energy - 1
} while (location != 0)

// Print the remaining energy
print(energy)


