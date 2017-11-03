//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func findSubstring(_ s: String, _ words: [String]) -> [Int] {
    var result = [Int]()
    let input = Array(s.characters)
    if words.count == 0 || s.isEmpty { return result }
    let length = words[0].characters.count
    var dict = Set(words)
    var start = 0, end = start + length
    while start < input.count {
        let word = String(input[start..<end])
        if (dict.remove(word) != nil) {
            result.append(start)
        }
        start = end
        end = start + length
    }
    return result
}

print(findSubstring("barfoothefoobarman", ["foo", "bar"]))
