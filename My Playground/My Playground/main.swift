//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
  let start = nums.index(of: target)
  if let s = start {
    var e = s
    while e < nums.count && nums[e] == target {
      e += 1
    }
    return [s, e - 1]
  } else {
    return [-1, -1]
  }
}

print(searchRange([5, 7, 7, 8, 8, 10], 8))
