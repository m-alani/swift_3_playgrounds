//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read input
let games = Int(readLine()!)!

// Process the games
var output = [String]()
for _ in 1...games {
  // 0 = true, 1 = false
  _ = readLine()
  let game = String(readLine()!)!.components(separatedBy: " ").map({$0 == "0"})
  if (game.count < 3) {
    output.append("Bob")
    continue
  } else {
    var plays = 0, prev = -1, left = 0, curr = 1, right = 2
    while (right < game.count) {
      if (game[left] && game[right]) {
        plays += 1
        if (prev != -1 && game[prev]) {
          let temp = curr
          curr = left
          left = prev
          prev -= 1
        } else {
          curr = right
          right += 1
        }
      } else {
        prev = left
        left = curr
        curr = right
        right += 1
      }
    }
    output.append((plays % 2 == 0) ? "Bob" : "Alice")
  }
}

// Print the output
for line in output {
  print(line)
}
