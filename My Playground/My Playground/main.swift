//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

/* Fake Stack Definition Begins */
var stack = [Int]()

func push(_ num: Int) {
  if stack.isEmpty {
    stack.append(num)
  } else {
    var idx = stack.count
    for (i, n) in stack.enumerated() {
      if num > n {
        idx = i
        break
      }
    }
    stack.insert(num, at: idx)
  }
}

func pop() {
  _ = stack.removeFirst()
}

func peek() -> Int {
  return stack.first ?? Int.min
}
/* Fake Stack Definition Ends */

push(7)
push(19)
push(5)

print(stack)
