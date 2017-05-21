//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Get the input
let str1 = Array(String(readLine()!)!.characters)
let str2 = Array(String(readLine()!)!.characters)

// Process the strings
var dict1 = [Character : Int]()
var dict2 = [Character : Int]()
let alphabet = Array("abcdefghijklmnopqrstuvwxyz".characters)
_ = alphabet.map({dict1[$0] = 0; dict2[$0] = 0})
for letter in str1 {
  dict1[letter]! += 1

}
for letter in str2 {
  dict2[letter]! += 1
}
var output = 0
for letter in alphabet {
  output += abs(dict1[letter]! - dict2[letter]!)
}

// Print the output
print(output)
