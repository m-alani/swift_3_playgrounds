//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func longestPalindrome(_ s: String) -> Int {
  var length = 0
  var itr = s.makeIterator()
  var chars = Set<Character>()
  while let char = itr.next() {
    if chars.remove(char) != nil {
      length += 2
    } else {
      chars.insert(char)
    }
  }
  if chars.count > 0 { length += 1 }
  return length
}

print(longestPalindrome("abccccdd"))
