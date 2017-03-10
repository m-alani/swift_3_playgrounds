//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Helper function to check if a matrix is contained in another matrix at specific coordenates
func does(thisMatrix main: [[Int]], containThisOne sub: [[Int]], atThisRow x: Int, andColumn y: Int) -> Bool {
  for checkX in 0..<sub.count {
    for checkY in 0..<sub[checkX].count {
      if sub[checkX][checkY] != main[checkX+x][checkY+y] {
        return false
      }
    }
  }
  return true
}


if let cases = Int(readLine() ?? "0") {
  var output = [String]()
  
  // Process Input
  for _ in 1...cases {
      
    // Read the case's input matrix
    var dimensions = String(readLine()!)!
    var rows = Int(dimensions.components(separatedBy: " ")[0])!
    var columns = Int(dimensions.components(separatedBy: " ")[1])!
    var input = [[Int]]()
    for row in 0..<rows {
      if let line: String = readLine() {
        input.append(line.utf8.map({Int($0) - 48;}))
      }
    }
    
    // Read the case's smaller matrix to find
    dimensions = String(readLine()!)!
    rows = Int(dimensions.components(separatedBy: " ")[0])!
    columns = Int(dimensions.components(separatedBy: " ")[1])!
    var search = [[Int]]()
    for row in 0..<rows {
      if let line: String = readLine() {
        search.append(line.utf8.map({Int($0) - 48;}))
      }
    }
    
    // Process this case
    var found = "NO"
    mainLoop: for x in 0...input.count-search.count {
      for y in 0...input[x].count-search[0].count {
        if does(thisMatrix: input, containThisOne: search, atThisRow: x, andColumn: y) {
          found = "YES"
          break mainLoop
        }
      }
    }
    output.append(found)
    
  }
  
  // Print Output
  for line in output {
    print(line)
  }
}
