//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func findShortestSubArray(_ nums: [Int]) -> Int {
  var degree = 0, result = Int.max
  var frequency = [Int:Int]()
  var ranges = [Int: (first: Int, last: Int)]()
  for (idx, num) in nums.enumerated() {
    frequency[num] = (frequency[num] ?? 0) + 1
    ranges[num] = ((ranges[num]?.first ?? idx), idx)
    if (frequency[num]! > degree) { degree = frequency[num]! }
  }
  for num in nums {
    if frequency[num] == degree {
      result = min(result, ranges[num]!.last - ranges[num]!.first + 1)
    }
  }
  return result
}

print(findShortestSubArray([1,2,2,3,1]))

