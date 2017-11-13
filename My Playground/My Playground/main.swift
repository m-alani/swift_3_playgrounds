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
  check(word: s, in: dict)
  return result
}

func check(word s: String, in words: Set<String>) {
  if s.isEmpty || result { result = true; return }
  var subWord = ""
  for char in s {
    subWord.append(char)
    if words.contains(subWord) {
      var newWord = s
      newWord.removeSubrange(s.range(of: subWord)!)
      check(word: newWord, in: words)
    }
  }
}

let testWord = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab"
let testDict =
["a","aa","aaa","aaaa","aaaaa","aaaaaa","aaaaaaa","aaaaaaaa","aaaaaaaaa","aaaaaaaaaa"]

print(wordBreak(testWord, testDict))
