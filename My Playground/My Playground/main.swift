//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
  var result = [Int]()
  var map = [Int:Int]()
  for (index, num) in nums.enumerated() {
    if let complimentIndex = map[num] {
      result.append(complimentIndex)
      result.append(index)
      break
    } else {
      map[target - num] = index
    }
    print(index)
  }
  return result
}

