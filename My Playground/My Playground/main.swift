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
  var charCountSet: Set<Character> = Set()
  let word = input.characters
  // Process the input line one character at a time. Maintain a set of all characters with odd occurences in the input
  for char in word {
    if let exists = charCountSet.remove(char) {}
    else {
      charCountSet.insert(char)
    }
  }
  // Check for passing conditions: 
  //   if the input length was even & we had even occurences of all characters
  //    OR
  //   if the input length was odd & we had even occurences of all characters except for one
  if (word.count % 2 == 0 && charCountSet.count == 0) || (word.count % 2 == 1 && charCountSet.count == 1) {
    print("YES")
  } else {
    print("NO")
  }
}
