//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

var result = [String]()

func generateParenthesis(_ n: Int) -> [String] {
  solveRecursive(n, 0, 0, "")
  return result
}

func solveRecursive(_ n: Int, _ left: Int, _ right: Int, _ currentStr: String) {
  if (currentStr.count == n * 2) {
    result.append(currentStr)
    return
  }
  if (left < n) { solveRecursive(n, left + 1, right, currentStr + "(") }
  if (right < left) { solveRecursive(n, left, right + 1, currentStr + ")") }
}

print(generateParenthesis(3))
