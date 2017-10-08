//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Finding the GCD of 2 integers

func greedy_GCD(firstNumber a: Int, secondNumber b:Int) -> Int {
  var gcd = min(a, b)
  while (a % gcd != 0 || b % gcd != 0) {
    gcd -= 1;
  }
  return gcd
}

func GCD(largerNumber a: Int, smallerNumber b: Int) -> Int {
  return (b == 0) ? a : GCD(largerNumber: b, smallerNumber: a % b)
}


print("Greedy : ", greedy_GCD(firstNumber: 5453001343, secondNumber: 1524870))
print("Optimized : ", GCD(largerNumber: 5453001343, smallerNumber: 1524870))


