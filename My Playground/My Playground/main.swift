//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Find the duplicate number

func findDuplicate(_ nums: [Int]) -> Int {
  if nums.count < 2 { return nums[0] }
  let sorted = nums.sorted()
  for i in 0..<nums.count - 1 {
    if sorted[i] == sorted[i+1] { return sorted[i] }
  }
  return 0
}

