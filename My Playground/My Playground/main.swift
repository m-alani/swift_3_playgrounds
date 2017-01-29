//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read Input
if let input = readLine() {
  var oddChars: Set<Character> = Set()
  let word = input.characters
  // Process the input line one character at a time. Maintain a set of all characters with odd occurences in the input
  for char in word {
    if let exists = oddChars.remove(char) {}
    else {
      oddChars.insert(char)
    }
  }
  // Check for passing condition:
  //   The input line can have 1 character at most with odd occurences
  let output = oddChars.count < 2 ? "YES" : "NO"
  
  // Print Output
  print(output)
}
