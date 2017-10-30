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

func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
  var distance = n
  var dummy = ListNode(0)
  dummy.next = head
  var parent: ListNode? = dummy
  var itr = head
  while itr != nil {
    itr = itr?.next
    if distance == 0 {
      parent = parent?.next
    } else {
      distance -= 1
    }
  }
  parent?.next = parent?.next?.next
  return dummy.next
}
