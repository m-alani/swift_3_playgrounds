//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func printFactorial(of n: Int) {
  var current = 1
  for i in 1...n {
    current *= i
    print(current)
  }
}

printFactorial(of: 12)
