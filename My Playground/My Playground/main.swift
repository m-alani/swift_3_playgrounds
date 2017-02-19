//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Definition of the generic Bubble Sort Algorithm function
func bubbleSort<T>(inputArray: [T], comparator:(T,T) -> Bool) -> [T] {
    var outputArray = inputArray
    if outputArray.count > 1 {
        for mainIndex in 0...outputArray.count-2 {
            for subIndex in 0...outputArray.count-mainIndex-2 {
                if comparator(outputArray[subIndex], outputArray[subIndex+1]) {
                    swap(&outputArray[subIndex], &outputArray[subIndex+1])
                }
            }
        }
    }
    return outputArray
}

// Definition of generic comparator functions
func ascending<Type: Comparable> (firstItem: Type, secondItem: Type) -> Bool {return firstItem > secondItem}
func descending<Type: Comparable> (firstItem: Type, secondItem: Type) -> Bool {return firstItem < secondItem}

// Setting the size of the test array (and the upper bound of the random numbers to fill it: 1 to N)
let N: UInt32 = 100

// Initialization of the test array
var unsortedArray = (1...N).map{_ in Int(arc4random_uniform(N)+1)}

// Sorting the array without mutating it (change the comparator function to control the order of the sort)
let sortedArray = bubbleSort(inputArray: unsortedArray, comparator: ascending)

// Printing the sorted array
for number in sortedArray {
    print(number)
}
