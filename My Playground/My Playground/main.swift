//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func minMutation(_ start: String, _ end: String, _ bank: [String]) -> Int {
  var result = 0
  
  // convert to characters arrays for easier handling
  var s1 = [Character](start.characters)
  let s2 = [Character](end.characters)
  
  // look for a path
  for i in 0..<s1.count {
    if s1[i] != s2[i] {
      s1[i] = s2[i]
      let temp = String(s1)
      var found = false
      for word in bank {
        if word == temp {
          found = true
          break
        }
      }
      if found {
        result += 1
      } else {
        return -1
      }
    }
  }
  return result
}

print(minMutation("AACCGGTT", "AAACGGTA", ["AACCGGTA","AACCGCTA","AAACGGTA"]))

