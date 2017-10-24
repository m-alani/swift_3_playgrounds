//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
  var last = nums.count, itr = 0
  while (itr < last) {
    if (nums[itr] == val) {
      last -= 1
      nums[itr] = nums[last]
    } else {
      itr += 1
    }
  }
  return last
}

var test = [2, 3, 3, 6, 3]
print(removeElement(&test, 3))
