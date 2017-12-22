//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

/* Fake Stack */
var stack = [Int]()

var n = Int(readLine()!)!
for _ in 0..<n {
  let inputStr = readLine()!
  let input = inputStr.components(separatedBy: " ").map({Int($0)!})
  if input[0] == 3 {
    print(stack.sorted().last ?? Int.max)
  } else if input[0] == 2 {
    _ = stack.removeFirst()
  } else {
    stack.insert(input[1], at: 0)
  }
}
