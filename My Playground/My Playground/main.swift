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
  let s = input.utf8
  var result = false
  var length = s.count / 2
  while length > 0 {
    if s.count % length == 0 {
      var start = s.startIndex, end = s.index(start, offsetBy: length)
      while end != s.endIndex && s[start] == s[end] {
        start = s.index(after: start); end = end == s.endIndex ? s.startIndex : s.index(after: end)
      }
      if end == s.endIndex {
        length = 0
        result = true
      }
    }
    length -= 1
  }
  return result
}

print(repeatedSubstringPattern("aabbaabb"))
