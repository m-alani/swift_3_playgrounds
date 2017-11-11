//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func getRow(_ rowIndex: Int) -> [Int] {
  var row = Array(repeating: 0, count: rowIndex + 1)
  var num = Double(rowIndex), den = 1.0, idx = 1
  // Cover the edge case of index = 0
  row[0] = 1
  if rowIndex == 0 { return row }
  // Find the values for the first half
  while num >= den {
    row[idx] = Int(Double(row[idx-1]) * num / den)
    num -= 1; den += 1; idx += 1
  }
  // Mirror the values to the second half
  let half = row.count / 2
  row[row.count-half...rowIndex] = ArraySlice(row[0..<half].reversed())
  return row
}

print(getRow(11))
