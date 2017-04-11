//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read input
let queries = Int(readLine()!)!

// Process the queries
var output = [String]()
for _ in 1...queries {
  _ = readLine()
  var array = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
  var unswappable = false
  var sorted = false
  
}
