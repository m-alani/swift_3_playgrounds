//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func fourSumCount(_ A: [Int], _ B: [Int], _ C: [Int], _ D: [Int]) -> Int {
  var count = 0
  var dict = [Int:Int]()
  for i in 0..<A.count {
    for j in 0..<B.count {
      let key = A[i] + B[j]
      dict[key] = (dict[key] ?? 0) + 1
    }
  }
  for i in 0..<C.count {
    for j in 0..<D.count {
      let key = (C[i] + D[j]) * -1
      if let num = dict[key] {
        count += num
      }
    }
  }
  return count
}

print(fourSumCount([-1,-1], [-1,1], [-1,1], [1,-1]))
