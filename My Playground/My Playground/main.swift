//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
  var l = 0, r = nums.count - 1
  while (l <= r) {
    let mid = (l + r) / 2
    if nums[mid] == target { return mid }
    else if nums[mid] < target { l = mid + 1 }
    else { r = mid - 1 }
  }
  return l
}

print(searchInsert([2, 4, 5, 8], 7))
