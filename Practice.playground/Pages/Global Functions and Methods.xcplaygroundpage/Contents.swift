import Foundation

var funcArray = [() -> ()]() // Create an empty array of functions of signature (void) -> (void)

funcArray.append {
  print("first function")
}

funcArray[0]()


