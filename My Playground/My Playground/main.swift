//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func threeSum(_ numbers: [Int]) -> [[Int]] {
  let nums = numbers.sorted()
  var result = [[Int]]()
  if (nums.count > 2) {
    for i in 0...nums.count - 3 {
      if i == 0 || (i > 0 && nums[i] != nums[i-1]) {
        var l = i + 1, r = nums.count - 1
        while (l < r) {
          if (nums[i] + nums[l] + nums[r] == 0) {
            result.append([nums[i], nums[l], nums[r]])
            while (l < r && nums[l] == nums[l+1]) {l += 1}
            while (l < r && nums[r] == nums[r-1]) {r -= 1}
            l += 1
            r -= 1
          } else if (nums[i] + nums[l] + nums[r] < 0) {
            l += 1
          } else {
            r -= 1
          }
        }
      }
    }
  }
  return result
}
