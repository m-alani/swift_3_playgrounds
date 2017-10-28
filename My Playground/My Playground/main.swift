//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func singleNumber(_ nums: [Int]) -> [Int] {
  var numbers = Set<Int>()
  for num in nums {
    let new = numbers.insert(num)
    if !new.inserted { numbers.remove(num) }
  }
  return Array(numbers)
}

print(singleNumber([1, 2, 1, 3, 2, 5]))
