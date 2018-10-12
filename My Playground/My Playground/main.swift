//
//  main.swift
//  My Playground
//  Marwan Alani
//

import Foundation

func binarySearch(for number: Int, in numbers: [Int]) -> Int? {
    guard !numbers.isEmpty else { return nil } // ensure we will not be searching in an empty array
    var lowerBound = 0
    var upperBound = numbers.count
    while lowerBound < upperBound {
        let index = lowerBound + (upperBound - lowerBound) / 2
        if numbers[index] == number {
            return index // we found the given number at this index
        } else if numbers[index] < number {
            lowerBound = index + 1
        } else {
            upperBound = index
        }
    }
    return nil // the given number was not found
}
