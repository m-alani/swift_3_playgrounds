//
//  main.swift
//  My Playground
//  Marwan Alani
//

import Foundation

func fizzBuzz(_ n: Int) {
  guard n > 0 else { return }
  for i in 1...n {
    var line = ""
    switch i {
    case _ where i % 3 == 0:
      line += "Fizz"
      if (i % 5 == 0) { fallthrough }
    case _ where i % 5 == 0:
      line += "Buzz"
    default:
      line += String(i)
    }
    print(line)
  }
}

fizzBuzz(15)
