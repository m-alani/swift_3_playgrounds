//
//  main.swift
//  My Playground
//  Marwan Alani
//

import Foundation

func pivotIndex(_ nums: [Int]) -> Int {
  if nums.count >= 2 {
    var sums = [Int]()
    var sum = 0
    sums.append(sum)
    _ = nums.map({sum += $0; sums.append(sum)})
    for (i, sum) in sums.enumerated() {
      let right = (i == sums.count - 1) ? 0 : nums[i]
      if sum == (sums.last! - sum - right) && (i != nums.count) { return i }
    }
  }
  return -1
}

print(pivotIndex([-1,-1,-1,1,1,1]))

