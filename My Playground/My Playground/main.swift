//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

var nums = [Int]()
var target = 0
var result = [[Int]]()

func combinationSum(_ candidates: [Int], _ tar: Int) -> [[Int]] {
  nums = candidates.sorted()
  target = tar
  expand(0, [Int]())
  return result
}

func expand(_ sum: Int, _ arr: [Int]) {
  let current = arr.last ?? 0
  for num in nums {
    if num < current { continue }
    let newSum = sum + num
    if newSum == target {
      var newArr = arr
      newArr.append(num)
      result.append(newArr)
    } else if newSum < target {
      var newArr = arr
      newArr.append(num)
      expand(newSum, newArr)
    } else {
      break
    }
  }
}

print(combinationSum([2, 3, 6, 7], 11))

