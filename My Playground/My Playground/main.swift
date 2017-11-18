//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func splitByLength(_ s: String, _ n: Int) -> [String] {
  var output = [String]()
  var start = s.startIndex, end = s.index(start, offsetBy: n)
  while start != s.endIndex {
    output.append(s.substring(with: start..<end))
    start = end
    end = s.index(start, offsetBy: n, limitedBy: s.endIndex) ?? s.endIndex
  }
  return output
}

func repeatedSubstringPattern(_ s: String) -> Bool {
  var result = false
  let count = s.count
  if count > 1 {
    var i = count / 2
    while i > 0 {
      if count % i == 0 {
        let split = splitByLength(s, i)
        var flag = true
        for word in split {
          if word != split[0] {
            flag = false
            break
          }
        }
        if flag {
          result = true
          i = 0
        }
      }
      i -= 1
    }
  }
  return result
}

print(repeatedSubstringPattern("aafbjrbfjkebwfjbwek"))
