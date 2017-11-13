//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

var result = false
var longest = 0

func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
  var dict = Set<String>()
  for word in wordDict {
    if word.count > longest { longest = word.count }
    dict.insert(word)
  }
  check(word: s, in: dict)
  return result
}

func check(word s: String, in words: Set<String>) {
  if s.isEmpty { result = true; return }
  var subWord = ""
  for char in s {
    subWord.append(char)
    if subWord.count > longest { return }
    if words.contains(subWord) {
      var newWord = s
      newWord.removeSubrange(s.range(of: subWord)!)
      check(word: newWord, in: words)
    }
  }
}

let testWord = "acaaaaabbbdbcccdcdaadcdccacbcccabbbbcdaaaaaadb"
let testDict = ["abbcbda","cbdaaa","b","dadaaad","dccbbbc","dccadd","ccbdbc","bbca","bacbcdd","a","bacb","cbc","adc","c","cbdbcad","cdbab","db","abbcdbd","bcb","bbdab","aa","bcadb","bacbcb","ca","dbdabdb","ccd","acbb","bdc","acbccd","d","cccdcda","dcbd","cbccacd","ac","cca","aaddc","dccac","ccdc","bbbbcda","ba","adbcadb","dca","abd","bdbb","ddadbad","badb","ab","aaaaa","acba","abbb"]

print(wordBreak(testWord, testDict))
