//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

let input = UInt(readLine()!)!
if input == 0 {
  print("1")
} else {
  print(pow(2, Array(String(input, radix: 2)).filter({$0 == "0"}).count))
}
