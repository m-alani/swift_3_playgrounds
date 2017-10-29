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
 */
public class ListNode {
   public var val: Int
   public var next: ListNode?
   public init(_ val: Int) {
     self.val = val
     self.next = nil
   }
}

class Solution {
  func swapPairs(_ head: ListNode?) -> ListNode? {
    if (head == nil || head?.next == nil) {
      return head
    }
    let swappedHead = head?.next
    head?.next = swapPairs(head?.next?.next)
    swappedHead?.next = head
    return swappedHead
  }
}
