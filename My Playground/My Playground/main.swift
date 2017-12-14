//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

public class ListNode {
   public var val: Int
   public var next: ListNode?
   public init(_ val: Int) {
     self.val = val
     self.next = nil
   }
}

func isPalindrome(_ head: ListNode?) -> Bool {
  var arr = [Int]()
  var itr = head
  var i = 0
  while itr != nil {
    arr.append(itr!.val)
    itr = itr!.next
  }
  while i < (arr.count / 2) {
    if arr[i] != arr[arr.count - i - 1] { return false }
    i += 1
  }
  return true
}
