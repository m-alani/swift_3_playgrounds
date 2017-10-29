//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
  func mergeKLists(_ input: [ListNode?]) -> ListNode? {
    var lists = input
    if lists.count == 0 { return nil }
    let dummy = ListNode(0)
    var curr: ListNode? = dummy
    var keepGoing = true
    while keepGoing {
      keepGoing = false
      var index = -1
      for i in 0..<lists.count {
        if let temp = lists[i] {
          if (index < 0) {
            index = i
          } else if (temp.val < lists[index]!.val) {
            index = i
          }
        }
      }
      if index >= 0 {
        curr?.next = ListNode(lists[index]!.val)
        curr = curr?.next
        lists[index] = lists[index]!.next
        keepGoing = true
      }
    }
    return dummy.next
  }
}
