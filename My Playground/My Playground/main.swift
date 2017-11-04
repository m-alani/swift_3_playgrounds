//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func findTheDifference(_ s: String, _ t: String) -> Character {
  let original = [Character](s), shuffled = [Character](t)
  var dict = [Character : Int]()
  
  // Populate the dictionary
  for letter in shuffled {
    let count = dict[letter] ?? 0
    dict[letter] = count + 1
  }
  
  // Remove the duplicate letters
  for letter in original {
    let value = dict[letter]
    if value == 1 {
      dict[letter] = nil
    } else {
      dict[letter] = value! - 1
    }
  }
  
  // Return the only character left in the dictionary
  return dict.first?.key ?? Character("")
}

print(findTheDifference("abcd", "abedc"))
