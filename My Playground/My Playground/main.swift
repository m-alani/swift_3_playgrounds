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
  while l < r {
    if s[l] != s[r] {
      return validate(s, l+1, r) || validate(s, l, r-1)
    }
    r -= 1
    l += 1
  }
  return true
}

func validate(_ s: [Character], _ left: Int, _ right: Int) -> Bool {
  var l = left, r = right
  while l < r {
    if s[l] != s[r] { return false }
    l += 1
    r -= 1
  }
  return true
}

print(validPalindrome("ebcbbececabbacecbbcbe"))

