//
//  main.swift
//  My Playground
//  Marwan Alani
//

import Foundation

func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
  var letters = [Character](magazine)
  for letter in ransomNote {
    guard let index = letters.index(of: letter) else { return false }
    letters.remove(at: index)
  }
  return true
}

print(canConstruct("aa", "abba"))
