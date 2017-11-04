//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func validPalindrome(_ input: String) -> Bool {
  let s = [Character](input)
  if s.count < 2 { return true }
  var l = 0, r = s.count - 1
  var skipped = false
  while l < r {
    if s[l] != s[r] {
      if s[l] == s[r - 1] {
        r -= 1
        if skipped { return false } else { skipped = true }
      } else if s[l + 1] == s[r] {
        l += 1
        if skipped { return false } else { skipped = true }
      } else {
        return false
      }
    }
    r -= 1
    l += 1
  }
  return true
}

print(validPalindrome("ebcbbececabbacecbbcbe"))

