//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

var mapping: [[Character]] = [[" "],
               [],
               ["a","b","c"],
               ["d","e","f"],
               ["g","h","i"],
               ["j","k","l"],
               ["m","n","o"],
               ["p","q","r","s"],
               ["t","u","v"],
               ["w","x","y","z"]
              ]

var output = [String]()

func letterCombinations(_ digits: String) -> [String] {
  let input = [Character](digits.characters)
  if (input.count > 0) {
    recursiveSolution(input, [Character]())
  }
  return output
}

func recursiveSolution(_ digits: [Character], _ word: [Character]) {
  if digits.count == 0 {
    output.append(String(word))
    return
  }
  let digit = Int(String(digits[0]).utf8.first!) - 48
  var newDigits = digits
  newDigits.removeFirst()
  for char in mapping[digit] {
    var newWord = word
    newWord.append(char)
    recursiveSolution(newDigits, newWord)
  }
}

print(letterCombinations("087"))
