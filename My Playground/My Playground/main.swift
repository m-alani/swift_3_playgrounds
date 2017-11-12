//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func longestConsecutive(_ nums: [Int]) -> Int {
  var result = 0
  var map = [Int: Int]()
  for num in nums {
    if map[num] == nil {
      let left = map[num - 1] ?? 0
      let right = map[num + 1] ?? 0
      let current = left + 1 + right
      result = max(current, result)
      map[num] = current
      map[num - left] = current
      map[num + right] = current
    }
  }
  return result
}

print(longestConsecutive([100, 4, 200, 1, 3, 2]))
