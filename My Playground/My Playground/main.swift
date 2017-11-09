//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
  var position = -1
  for (idx, num) in nums.enumerated() {
    if num >= target {
      position = idx
      break
    }
  }
  return (position == -1) ? nums.count : position
}

print(searchInsert([], 7))
