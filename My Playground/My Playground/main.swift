//
//  main.swift
//  My Playground
//  Marwan Alani
//

import Foundation

var stack = [Int]()
var max = Int.min

var n = Int(readLine()!)!
for _ in 0..<n {
  let inputStr = readLine()!
  let input = inputStr.components(separatedBy: " ").map({Int($0)!})
  if input[0] == 3 {
    print(max)
  } else if input[0] == 2 {
    let temp = stack.removeLast()
    if temp == max {
      max = stack.max() ?? Int.min
    }
  } else {
    stack.append(input[1])
    if input[1] > max { max = input[1] }
  }
}
