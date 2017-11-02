//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func nextPermutation(_ nums: inout [Int]) {
    var l = -1, i = nums.count - 2
    while (i >= 0) {
        if nums[i] < nums[i + 1] {
            l = i
            break
        }
        i -= 1
    }
    if l == -1 {
        nums = Array(nums.reversed())
        return
    }
    var r = -1
    i = nums.count - 1

    while (i > l) {
        if nums[i] > nums[l] {
            r = i
            break
        }
        i -= 1
    }
    nums.swapAt(l, r)
    nums.replaceSubrange(l + 1..<nums.count, with: Array(Array(nums[l + 1...nums.count - 1]).reversed()))
}

var sample = [1, 1, 5]
nextPermutation(&sample)
print(sample)

