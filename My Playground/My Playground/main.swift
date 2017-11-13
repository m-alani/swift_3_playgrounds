//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

var result = false

func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
  let dict = Set(wordDict)
  var f = Array(repeating: false, count: s.count + 1)
  f[0] = true;
  for i in 1...s.count {
    for j in 0..<i {
      let range = s.index(s.startIndex, offsetBy: j)..<s.index(s.startIndex, offsetBy: i)
      let word = s.substring(with: range)
      if f[j] && dict.contains(word) {
        f[i] = true;
        break;
      }
    }
  }
  return f[s.count];
}


let testWord = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab"
let testDict =
["a","aa","aaa","aaaa","aaaaa","aaaaaa","aaaaaaa","aaaaaaaa","aaaaaaaaa","aaaaaaaaaa"]

print(wordBreak(testWord, testDict))
