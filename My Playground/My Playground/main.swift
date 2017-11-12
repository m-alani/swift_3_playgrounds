//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func containsNearbyAlmostDuplicate(_ nums: [Int], _ k: Int, _ t: Int) -> Bool {
  if nums.count < 2 || k < 1 { return false }
  for i in 0..<nums.count-1 {
    for j in i+1...i+k {
      if j == nums.count { break }
      else if abs(nums[i] - nums[j]) <= t { return true }
    }
  }
  return false
}

print(containsNearbyAlmostDuplicate([2,2], 3, 0))
