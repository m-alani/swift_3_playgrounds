//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Finding the GCD of 2 integers using a recursive implementation of Euclid's Algorithm

func euclidGCD(firstNumber a: Int, secondNumber b:Int) -> Int {
  return recursiveCall(largerNumber: abs(max(a, b)), smallerNumber: abs(min(a, b)))
}

func recursiveCall(largerNumber a: Int, smallerNumber b: Int) -> Int {
  return (b == 0) ? a : recursiveCall(largerNumber: b, smallerNumber: a % b)
}

print(euclidGCD(firstNumber: 9, secondNumber: 726))
