//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func bulbSwitch(_ n: Int) -> Int {
  if n < 2 { return n }
  var bulbs = Array(repeating: true, count: n)
  var i = 2
  while i <= n {
    var idx = i - 1
    while idx < n {
      bulbs[idx] = !bulbs[idx]
      idx += i
    }
    i += 1
  }
  return bulbs.filter({ $0 }).count
}

print(bulbSwitch(12))

