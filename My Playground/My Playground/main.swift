//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Define a data structure to hold required info for a single violation category
struct Stats {
  var count: Int
  var earliestOccurance: Date
  var latestOccurance: Date
}

// Declare global variables
var output = [String : Stats]()
let inputPath = FileManager.default.currentDirectoryPath + "/dev-challenge-data.csv"
let calendar = Calendar.current
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd"

// Attempt to open the CSV file and process the violations, one line at a time
do {
  let input = try String(contentsOfFile: inputPath).components(separatedBy: "\n")
  for lineNumber in 1..<input.count {
    let fields = input[lineNumber].components(separatedBy: ",")
    let dateArray = fields[3].components(separatedBy: " ")[0].components(separatedBy: "-").map({Int($0)!})
    let dateComponents = DateComponents(calendar: calendar, year: dateArray[0], month: dateArray[1], day: dateArray[2])
    let dateOfViolation = calendar.date(from: dateComponents)!
    if (output[fields[2]] != nil) {
      output[fields[2]]!.count += 1
      if (output[fields[2]]!.earliestOccurance > dateOfViolation) {
        output[fields[2]]!.earliestOccurance = dateOfViolation
      } else if (output[fields[2]]!.latestOccurance < dateOfViolation) {
        output[fields[2]]!.latestOccurance = dateOfViolation
      }
    } else {
      output[fields[2]] = Stats(count: 1, earliestOccurance: dateOfViolation, latestOccurance: dateOfViolation)
    }
  }
} catch {
  print("Sorry, something went wrong and we couldn't process your request")
}

// Print the output
print("\n<<<<< Beginning of Report >>>>>\n")
for violation in output {
  print("Category: \(violation.key)")
  print("\tNumber of Violations: \(violation.value.count)")
  print("\tEarliest Violation: \(dateFormatter.string(from: violation.value.earliestOccurance))")
  print("\tLatest Violation: \(dateFormatter.string(from: violation.value.latestOccurance))\n")
}
print("\n<<<<< End of Report >>>>>\n")

