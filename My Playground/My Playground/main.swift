//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

var test = [String: Int]()
test["A"] = 16
test["G"] = 11
test["Z"] = 21

print(test)

var sorted = test.sorted(by: { $0.value > $1.value })

sorted[0].value -= 1

print(sorted)
