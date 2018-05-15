//
//  main.swift
//  My Playground
//  Marwan Alani
//

import Foundation

func groupAnagrams(_ strs: [String]) -> [[String]] {
    var words = [String : [String]]()
    
    for str in strs {
        let sorted = String(str.sorted())
        if words[sorted] == nil {
            words[sorted] = [str]
        } else {
            words[sorted]?.append(str)
        }
    }
    
    return Array(words.values)
}

print(groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"]))
