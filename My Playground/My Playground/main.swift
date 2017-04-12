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
  var game = String(readLine()!)!.components(separatedBy: " ").map({Int($0)! == 0})
  if (game.count < 3) {
    output.append("Bob")
    continue
  } else {
    var plays = 0
    var stop = false
    while (!stop && game.count > 2) {
      stop = true
      for idx in 0..<(game.count-2) {
        if (game[idx] && game[idx + 2]) {
          game.remove(at: idx + 1)
          plays += 1
          stop = false
          break
        }
      }
    }
    output.append((plays % 2 == 0) ? "Bob" : "Alice")
  }
}

// Print the output
for line in output {
  print(line)
}
