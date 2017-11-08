//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func longestPalindromeSubseq(_ s: String) -> Int {
  var letters = Set<Character>()
  var longest = 0
  for letter in s {
    if letters.remove(letter) != nil {
      longest += 2
    } else {
      letters.insert(letter)
    }
  }
  return (!s.isEmpty && longest == 0) ? 1 : longest
}

print(longestPalindrome("aaa"))
