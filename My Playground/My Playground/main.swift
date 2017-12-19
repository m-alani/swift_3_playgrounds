//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func climbStairs(_ n: Int) -> Int {
  if n == 1 { return 1 }
  if n == 2 { return 2 }
  var one = 2, two = 1, i = 2, ways = 0
  while i < n {
    i += 1
    ways = one + two
    two = one
    one = ways
  }
  return ways
}

print(climbStairs(5))
