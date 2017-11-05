//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

var count = 0

func countSubstrings(_ s: String) -> Int {
  if !s.isEmpty {
    let input = [Character](s)
    for i in 0..<input.count {
      extend(input, i, i) // for odd length palindromes
      extend(input, i, i + 1) // for even length palindromes
    }
  }
  return count
}

func extend(_ s: [Character], _ left: Int, _ right: Int) {
  var l = left, r = right
  while (l >= 0 && r < s.count && s[l] == s[r]) {
    count += 1; l -= 1; r += 1
  }
}

print(countSubstrings("aaa"))
