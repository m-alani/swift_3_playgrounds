//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// helper fucntion
func dictionirize(_ arr: [Character]) -> [Int] {
  var dict = [Character: Int]()
  for char in arr {
    dict[char] = (dict[char] ?? 0) + 1
  }
  return dict.values.sorted(by: >)
}

func leastInterval(_ tasks: [Character], _ n: Int) -> Int {
  if tasks.count == 1 || n == 0 { return tasks.count }
  var sortedTasks = dictionirize(tasks)
  var cooldown = 0, total = 0, zeroCount = 0
  while zeroCount != sortedTasks.count {
    total += 1
    let index = (cooldown + zeroCount) % sortedTasks.count
    sortedTasks[index] -= 1
    if sortedTasks[index] == 0 { zeroCount += 1 }
    cooldown = (cooldown < n) ? cooldown + 1 : 0
  }
  return total
}

print(leastInterval(["A","A","A","C","B","B"], 2))

