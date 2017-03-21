//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read T
let cases = Int(readLine()!)!

// Solve the cases one by one
var output = [Int]()
for _ in 1...cases {
    let bwTarget = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
    var prices = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
    if (prices[0] + prices[2]) < prices[1] {
        prices[1] = prices[0] + prices[2]
    } else if (prices[1] + prices[2]) < prices[0] {
        prices[0] = prices[1] + prices[2]
    }
    output.append(prices[0]*bwTarget[0] + prices[1]*bwTarget[1])
}

// Print the output
for caseResult in output {
    print(caseResult)
}
