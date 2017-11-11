//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

var visited = [Bool]()
var m = [[Int]]()

func DFS(_ i: Int) {
  for j in 0..<m.count {
    if m[i][j] == 1 && !visited[j] {
      visited[j] = true
      DFS(j)
    }
  }
}

func findCircleNum(_ M: [[Int]]) -> Int {
  var count = 0
  visited = Array(repeating: false, count: M.count)
  m = M
  for i in 0..<m.count {
    if !visited[i] {
      DFS(i)
      count += 1
    }
  }
  return count
}

print(findCircleNum([[1,1,0],
                     [1,1,0],
                     [0,0,1]]))
