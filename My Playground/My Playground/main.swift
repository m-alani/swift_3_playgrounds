//
//  main.swift
//  My Playground
//  Marwan Alani
//

import Foundation

var output = ""
var input = ""
var line = readLine(strippingNewline: false)

while (line != nil) {
  output.append(line!)
  line = readLine(strippingNewline: false)
}

print("\n\(output)\n")

