//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

//************ Node Class Begins ************//

/// Base Node class to be used in a Stack
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

//************ Node Class Ends ************//

//************ Stack Class Begins ************//

/// Generic Stack implementation
class Stack<T> {
    
    /// The top node of the list
    private var top: Node<T>?
    
    /// Default initializer with empty stack
    init() {
        self.top = nil
    }
    
    /// Overloaded initializer to create a stack with 1 node
    /// Note that the "node" is passed by reference, hence we copy its data to a new node first
    ///
    /// - Parameter top: Set the top of the stack as the passed parameter
    init(top: Node<T>) {
        let nodeCopy = Node(data: top.data)
        self.top = nodeCopy
    }
    
    /// Check if the stack is empty
    ///
    /// - Returns: A boolean value to indicate whether the stack is empty.
    public func isEmpty() -> Bool {
        return self.top == nil
    }
    
    /// Inserts a value at the top of the stack. O(1)
    ///
    /// - Parameter data: The data value to be inserted
    public func push(data: T) {
        let newNode = Node(data: data, nextNode: self.top)
        self.top = newNode
    }
    
    /// Inserts a node at the top of the stack. O(1)
    /// Note that the "node" is passed by reference, hence we copy its data to a new node first
    ///
    /// - Parameter node: The node to be inserted
    public func push(node: Node<T>) {
        let nodeCopy = Node(data: node.data)
        nodeCopy.next = self.top
        self.top = nodeCopy
    }
    
    
    /// Removes the top node in the stack and returns its value. If the stack is empty, it returns a nil. O(1)
    ///
    /// - Returns: An optional T. The data of the removed node (if any), or nil otherwise
    public func pop() -> T? {
        var removedValue: T? = nil
        if (self.top != nil) {
            removedValue = self.top?.data
            self.top = self.top!.next
        }
        return removedValue
    }

    
    /// Returns the top data value in the stack (if any) without deleting the node. O(1)
    ///
    /// - Returns: The optional data value of the first node in the stack. Returns nil if the stack is empty
    public func peek() -> T? {
        var value: T? = nil
        if (self.top != nil) {
            value = self.top!.data
        }
        return value
    }
    
    /// Create an Array from the contents of the stack. O(n)
    ///
    /// - Returns: An array of type T containing the elements of the list in the same order
    public func toArray() -> [T] {
        var array = [T]()
        var currentNode = self.top
        while (currentNode != nil) {
            array.append(currentNode!.data)
            currentNode = currentNode!.next
        }
        return array
    }
}

//************ Stack Class Ends ************//

//************ Main Program (for testing) Begins ************//

// Create an empty list
let myStack = Stack<Int>()

// Set N to the desired number of test elements. Default is 20
let N: UInt32 = 20

// Populate the stack with random numbers
print("Pushing \(N) random number(s) into the Stack...\n")
for _ in 1...N {
    myStack.push(data: Int(arc4random_uniform(N)+1))
}

// Print the stack as an Array
print("Printing the Stack as an Array:")
print(myStack.toArray(),"\n")

// Remove the first 3 values
print("Popping the top element: \(myStack.pop()!)")
print("Popping the top element: \(myStack.pop()!)")
print("Popping the top element: \(myStack.pop()!)\n")

// Peek at the current top
print("Peeking into the top element of the Stack: \(myStack.peek()!)\n")

//************ Main Program (for testing) Ends ************//
