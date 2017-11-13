//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

var memo = [[Int]]()
var A = [Int]()
var B = [Int]()

func findLength(_ arrayA: [Int], _ arrayB: [Int]) -> Int {
  A = arrayA
  B = arrayB
  memo = Array(repeating: Array(repeating: -1, count: B.count), count: A.count)
  if A.count == 0 || B.count == 0 { return 0 }
  return compare(A.count - 1, B.count - 1)
}

func compare(_ ptrA: Int, _ ptrB: Int) -> Int {
  var result = Int()
  if ptrA < 0 || ptrB < 0 {
    return 0
  } else if memo[ptrA][ptrB] != -1 {
    return memo[ptrA][ptrB]
  } else if A[ptrA] == B[ptrB] {
    result = 1 + compare(ptrA - 1, ptrB - 1)
  } else {
    result = max(compare(ptrA - 1, ptrB), compare(ptrA, ptrB - 1))
  }
  memo[ptrA][ptrB] = result
  return result
}

print(findLength([1], [3,2,1,4,7]))
