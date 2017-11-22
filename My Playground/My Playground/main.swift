//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Task Scheduler

var test = [(task: String, freq: Int)]()
test.append(("A", 3))
test.append(("B", 6))

print(test.sorted(by: { $0.freq > $1.freq }))
