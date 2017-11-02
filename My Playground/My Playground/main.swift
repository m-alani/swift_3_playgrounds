//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func strStr(_ haystack: String, _ needle: String) -> Int {
  if needle == "" { return 0 }
  if needle.count > haystack.count { return -1 }
  let range = haystack.range(of: needle, options: [.literal])
  if let range = range {
    return haystack.distance(from: haystack.startIndex, to: range.lowerBound)
  } else {
    return -1
  }
}

print(strStr("abcdefghijklmn", "bc"))
