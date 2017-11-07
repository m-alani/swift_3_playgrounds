//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

var paths = 0
    
func uniquePaths(_ m: Int, _ n: Int) -> Int {
  findPath(m, n, 1, 1)
  return paths
}

func findPath(_ m: Int, _ n: Int, _ x: Int, _ y: Int) {
  if x > m || y > n { return }
  if x == m && y == n {
    paths += 1
  } else {
    findPath(m, n, x + 1, y)
    findPath(m, n, x, y + 1)
  }
}

print(uniquePaths(1, 2))
