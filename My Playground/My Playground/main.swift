//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func shiftToLeft(array a: inout [Int], by n: Int) {
  if a.count < 2 { return }
  var shifts = 0
  while shifts < n {
    let temp = a[0]
    var i = 0
    while i < a.count - 1 {
      a[i] = a[i+1]
      i += 1
    }
    a[a.count-1] = temp
    shifts += 1
  }
}

var a = [1,2,3,4,5,6]
shiftToLeft(array: &a, by: 7)
print(a)
