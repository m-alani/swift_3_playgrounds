//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

let lowerCase = Set<Character>("abcdefghijklmnopqrstuvwxyz")
let upperCase = Set<Character>("ABCDEFGHIJKLMNOPQRSTUVWXYZ")

func detectCapitalUse(_ word: String) -> Bool {
  if word.count < 2 { return true }
  let input = [Character](word)
  if upperCase.contains(input[0]) {
    let rest = [Character](input[1...])
    return rest.reduce(true, { $0 && lowerCase.contains($1) }) || rest.reduce(true, { $0 && upperCase.contains($1) })
  }
  return input.reduce(true, { $0 && lowerCase.contains($1) })
}

print(detectCapitalUse("Crap"))

