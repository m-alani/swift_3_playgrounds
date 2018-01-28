//
//  main.swift
//  My Playground
//  Marwan Alani
//

import Foundation

func fizzBuzz(_ n: Int) -> [String] {
  var output = [String]()
  guard n > 0 else { return output }
  for i in 1...n {
    var current = String()
    if i % 3 == 0 { current.append("Fizz") }
    if i % 5 == 0 { current.append("Buzz") }
    if current.count == 0 { current.append(String(i)) }
    output.append(current)
  }
  return output
}

print(fizzBuzz(15))
