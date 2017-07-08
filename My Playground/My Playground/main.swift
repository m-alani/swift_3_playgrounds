//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read the inputs
let pageSize = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})[1]
let chapters = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})

// Process the problem
var special = 0
var page = 0
for chapter in chapters {
  var problemsOnPage = 0
  page += 1
  for problem in 1...chapter {
    if (problemsOnPage == pageSize) {
      page += 1
      problemsOnPage = 1
    } else {
      problemsOnPage += 1
    }
    if (problem == page) {
      special += 1
    }
  }
}

// Print the output
print(special)


