//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

let defaultPath = FileManager.default.currentDirectoryPath + "/test.csv"
let calendar = Calendar.current

let testDate = "2012-01-03 0:00"
let date = testDate.components(separatedBy: " ")[0].components(separatedBy: "-").map({Int($0)})

let dateByComponents = DateComponents(calendar: Calendar.current,
                                      year: date[0],
                                      month: date[1],
                                      day: date[2])

var anotherDate = DateComponents()
anotherDate.year = 2011

print (CommandLine.arguments)

//do {
//  
//  print (try String(contentsOfFile: defaultPath))
//
//} catch {}
