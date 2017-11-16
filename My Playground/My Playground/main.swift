//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func find(_ str: [Character], _ idx: Int) -> Int {
  let char = str[idx]
  var result = 1
  while idx + result < str.count && str[idx + result] == str[idx] { result += 1 }
  return result
}

func countAndSay(_ n: Int) -> String {
  if n < 1 { return "" }
  var str: [Character] = ["1"]
  var iteration = 1
  while iteration < n {
    var newStr = [Character]()
    var ptr = 0 
    while ptr < str.count {
      let reps = find(str, ptr)
      newStr.append(String(reps).first!)
      newStr.append(str[ptr])
      ptr += reps
    }
    iteration += 1
    str = newStr
  }
  return String(str)
}

print(countAndSay(5))
