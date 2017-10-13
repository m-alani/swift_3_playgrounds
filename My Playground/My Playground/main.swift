//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func lengthOfLongestSubstring(_ s: String) -> Int {
    var itr = s.characters.makeIterator() // In Swift 4, String is a collection type, so we can do "s.makeIterator()" without creating a Character View first
    var longest = 0, begin = 0, end = 0
    var letters = [Character: Int]()
    while let key = itr.next() {
        if let prev = letters[key] {
            if begin <= prev {
                begin = prev + 1
            }
        }
        letters[key] = end
        if longest <= end - begin {
            longest = end - begin + 1
        }
        end += 1
    }
    return longest
}
