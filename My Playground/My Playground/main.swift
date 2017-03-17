//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Definition of a pole
struct Pole {
    let altitude: Int
    let weight: Int
}

// Helper function to calculate the cost of creating a pile at an altitude
func costOfPile(fromPoleIndex from: Int, atPoleIndex to: Int, forPoles poles: [Pole]) -> Int {
    var cost = 0
    var index = from + 1
    while (index <= to) {
        cost += (poles[index].altitude - poles[from].altitude) * poles[index].weight
        index += 1
    }
    return cost
}

// Helper function to find the next pile location
func findNextPile(fromPoleIndex from: Int, toPoleIndex to: Int, forPoles poles: [Pole]) -> Int {
    var indexOfPile = from
    var minimum = costOfPile(fromPoleIndex: from, atPoleIndex: to, forPoles: poles)
    var index = from
    while (index < to) {
        let tempCost = costOfPile(fromPoleIndex: from, atPoleIndex: index, forPoles: poles) + costOfPile(fromPoleIndex: index+1, atPoleIndex: to, forPoles: poles)
        if (tempCost < minimum) {
            minimum = tempCost
            indexOfPile = index + 1
        }
        index += 1
    }
    return indexOfPile
}

// Read n & k
var inputLine = String(readLine()!)!
let n = Int(inputLine.components(separatedBy: " ")[0])!
var k = Int(inputLine.components(separatedBy: " ")[1])!

// Read the input
var poles = [Pole]()
for _ in 0..<n {
    inputLine = String(readLine()!)!
    poles.append(Pole(altitude: Int(inputLine.components(separatedBy: " ")[0])!, weight: Int(inputLine.components(separatedBy: " ")[1])!))
}

// Find the index of each pile
var pilesLocations = [0]
k -= 1
while (k > 0) {
    pilesLocations.append(findNextPile(fromPoleIndex: pilesLocations[pilesLocations.count-1], toPoleIndex: poles.count-1, forPoles: poles))
    k -= 1
}

// Calculate the output
pilesLocations.append(poles.count)
var output = 0
for index in 0..<pilesLocations.count-1 {
    output += costOfPile(fromPoleIndex: pilesLocations[index], atPoleIndex: pilesLocations[index+1]-1, forPoles: poles)
}

// Print the output
print(output)
