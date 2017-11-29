//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func trailingZeroes(_ num: Int) -> Int {
  var result = 0, n = num
  while n >= 5 {
    n /= 5
    result += n
  }
  return result
}

print(trailingZeroes(26))
