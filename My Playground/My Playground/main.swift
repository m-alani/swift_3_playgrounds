//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

var result = [[Int]]()

func threeSum(_ nums: [Int]) -> [[Int]] {
  if (nums.count > 2) {
    for i in 0...nums.count - 3 {
      for j in i+1...nums.count - 2 {
        for k in j+1...nums.count - 1 {
          if nums[i] + nums[j] + nums[k] == 0 {
            insertUnique([nums[i], nums[j], nums[k]].sorted())
          }
        }
      }
    }
  }
  return result
}

func insertUnique(_ arr: [Int]) {
  for a in result {
    if a[0] == arr[0] && a[1] == arr[1] && a[2] == arr[2] {
      return
    }
  }
  result.append(arr)
}
