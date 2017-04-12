//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Helper Linked List node class
public class LinkedListNode<T> {
  var value: T
  var next: LinkedListNode?
  weak var previous: LinkedListNode?
  
  public init(value: T) {
    self.value = value
  }
}

// Helper Linked List class
public final class LinkedList<T> {
  
  public typealias Node = LinkedListNode<T>
  
  fileprivate var head: Node?
  
  public init() {}
  
  public var isEmpty: Bool {
    return head == nil
  }
  
  public var first: Node? {
    return head
  }
  
  public var last: Node? {
    if var node = head {
      while case let next? = node.next {
        node = next
      }
      return node
    } else {
      return nil
    }
  }
  
  public func node(atIndex index: Int) -> Node? {
    if index >= 0 {
      var node = head
      var i = index
      while node != nil {
        if i == 0 { return node }
        i -= 1
        node = node!.next
      }
    }
    return nil
  }
  
  public func append(_ value: T) {
    let newNode = Node(value: value)
    self.append(newNode)
  }
  
  public func append(_ node: Node) {
    let newNode = LinkedListNode(value: node.value)
    if let lastNode = last {
      newNode.previous = lastNode
      lastNode.next = newNode
    } else {
      head = newNode
    }
  }
  
  @discardableResult public func remove(node: Node) -> T {
    let prev = node.previous
    let next = node.next
    
    if let prev = prev {
      prev.next = next
    } else {
      head = next
    }
    next?.previous = prev
    
    node.previous = nil
    node.next = nil
    return node.value
  }

  convenience init(array: Array<T>) {
    self.init()
    
    for element in array {
      self.append(element)
    }
  }
}

// Read input
let games = Int(readLine()!)!

// Process the games
var output = [String]()
for _ in 1...games {
  // 0 = true, 1 = false
  _ = readLine()
  let gameArray = String(readLine()!)!.components(separatedBy: " ").map({$0 == "0"})
  if (gameArray.count < 3) {
    output.append("Bob")
    continue
  } else {
    var game = LinkedList(array: gameArray)
    var count = gameArray.count
    var plays = 0
    var currNode = game.node(atIndex: 0)
    while (count > 2 && currNode?.next?.next != nil) {
      if ((currNode?.value)! && (currNode?.next?.next?.value)!) {
        game.remove(node: (currNode?.next)!)
        count -= 1
        plays += 1
        currNode = (currNode?.previous != nil) ? currNode?.previous : game.node(atIndex: 0)
      } else {
        currNode = currNode?.next
      }
    }
    output.append((plays % 2 == 0) ? "Bob" : "Alice")
  }
}

// Print the output
for line in output {
  print(line)
}
