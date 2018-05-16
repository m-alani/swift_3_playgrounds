//
//  main.swift
//  My Playground
//  Marwan Alani
//

import Foundation

public class TreeNode {
  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?
  public init(_ val: Int) {
    self.val = val
    self.left = nil
    self.right = nil
  }
}

var sum = 0

func convertBST(_ root: TreeNode?) -> TreeNode? {
  guard let node = root else { return nil }
  _ = convertBST(node.right)
  sum += node.val
  node.val = sum
  _ = convertBST(node.left)
  return root
}
