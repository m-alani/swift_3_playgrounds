//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func reverse(_ x: Int) -> Int {
  var temp: [Character] = Array(String(x)) // String(x).characters in Swift 3, since String didn't conform to Sequence then
  if (temp[0] == "-") {
    temp.append("-")
    temp = temp.reversed()
    temp.remove(at: temp.count - 1)
  } else {
    temp = temp.reversed()
  }
  if let result = Int(String(temp)) {
    if (result > 2147483647 || result < -2147483648) {
      return 0
    } else {
      return result
    }
  }
  return 0
}

