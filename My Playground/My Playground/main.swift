//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func leastInterval(_ tasks: [Character], _ n: Int) -> Int {
  if tasks.count == 1 || n == 0 { return tasks.count }
  var dict = [Character: Int]()
  for char in tasks { dict[char] = (dict[char] ?? 0) + 1 }
  let arr = dict.values.sorted(by: >) // 3 2 1
  let maximum = arr.first! - 1, count = arr.filter({ $0 == arr.first! }).count // 1
  return max(tasks.count, (maximum * (n+1)) + count)
}

print(leastInterval(["A","A","A","C","B","B"], 2))

