//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func lengthOfLongestSubstring(_ s: String) -> Int {
    var longest = 0
    var letters = [Character: Int]()
    for i in 0..<s.characters.count {
        if let prev = letters[s[s.index(s.startIndex, offsetBy: i)]] {
            longest = (longest < i - prev + 1) ? i - prev + 1 : longest
        } else {
            longest = (longest < i + 1) ? i + 1 : longest
        }
        letters[s[s.index(s.startIndex, offsetBy: i)]] = i
    }
    return longest
}

print(lengthOfLongestSubstring("pwwkew"))
