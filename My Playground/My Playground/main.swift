//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

/// Base Node class to be used in a Linked List
class Node<T> {
    
    /// The variable to hold the data part of the node
    let data: T
    
    /// An optional link to the next node
    var next: Node<T>?
    
    init(data: T) {
        self.data = data
        self.next = nil
    }
    
    init(data: T, nextNode: Node<T>?) {
        self.data = data
        self.next = nextNode
    }
}

/// Generic Singly Linked List implementation
class LinkedList<T> {
    
    private var root: Node<T>?
    
    /// The number of nodes/values in the list.
    public var count: Int = 0
    
    /// Default initializer with empty list
    init() {
        self.root = nil
    }
    
    /// Overloaded initializer to create a list with 1 node
    ///
    /// - Parameter root: Set the root of the list as the passed parameter
    init(root r: Node<T>) {
        self.root = r
    }
    
    
    /// Create a string representation of the list
    ///
    /// - Returns: A string conatining the comma separated values of the list
    public func toString() -> String {
        var tempString = "["
        var currentNode = self.root
        if let unwrappedNode = currentNode {
            tempString += "\(unwrappedNode.data)"
            currentNode = unwrappedNode.next
        }
        while (currentNode != nil) {
            tempString += ", \(currentNode!.data)"
            currentNode = currentNode!.next
        }
        tempString += "]"
        return tempString
    }
    
    
    /// Check if the list is empty or not
    ///
    /// - Returns: A boolean value to indicate whether the list is empty.
    public func isEmpty() -> Bool {
        return self.count == 0
    }
    
    
    /// Inserts a value at the beginning of the list. O(1)
    ///
    /// - Parameter data: The data value to be inserted
    public func insertFirst(data: T) {
        let newNode = Node(data: data, nextNode: self.root)
        self.root = newNode
    }
    
    
    /// Inserts a node at the beginning of the list. O(1)
    ///
    /// - Parameter node: The node to be inserted
    public func insertFirst(node: Node<T>) {
        node.next = self.root
        self.root = node
    }
    
    
    /// Removes the first node in the list and returns its value. If the list is empty, it returns a nil.
    ///
    /// - Returns: An optional T. The data of the removed node (if any), or nil otherwise
    public func removeFirst() -> T? {
        var removedValue: T? = nil
        if (!self.isEmpty()) {
            removedValue = root?.data
            self.root = self.root!.next
        }
        return removedValue
    }
    
    
    /// Inserts a value at the end of the list. O(n)
    ///
    /// - Parameter data: The data value to be inserted
    public func insertLast(data: T) {
        if (self.count == 0) {
            self.root = Node(data: data)
            self.count += 1
        } else {
            var currentNode = self.root
            while (currentNode!.next != nil) {
                currentNode = currentNode!.next
            }
            currentNode!.next = Node(data: data)
            self.count += 1
        }
    }
}



let test = LinkedList<Int>()
test.insertFirst(data: 2)
test.insertFirst(data: 1)

print(test.toString())
