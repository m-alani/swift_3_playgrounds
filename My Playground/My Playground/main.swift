//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func repeatedSubstringPattern(_ input: String) -> Bool {
  guard input.count > 1 else { return false }
  let s = [Character](input)
  var result = false
  var length = s.count / 2
  while length > 0 {
    if s.count % length == 0 {
      var start = 0, end = length
      while end < s.count && s[start] == s[end] {
        start += 1; end += 1
      }
      if end == s.count {
        length = 0
        result = true
      }
    }
    length -= 1
  }
  return result
}

print(repeatedSubstringPattern("aabbgaabb"))
