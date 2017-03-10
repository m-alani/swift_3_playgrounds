//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

if let cases = Int(readLine() ?? "0") {
  //var output = [String]()
  
  // Process Input
  for _ in 1...cases {
    if let dimensions: String = readLine() {
      let rows = Int(dimensions.components(separatedBy: " ")[0])!
      let columns = Int(dimensions.components(separatedBy: " ")[1])!
      var input = [[Int]]()
        
      for row in 0..<rows {
        if let line: String = readLine() {
          input.append(line.utf8.map({Int($0) - 48;}))
        }
      }
      
      print(input)
    }
  }
  
}
