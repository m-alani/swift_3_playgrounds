//: ## Swift is 👑
import Foundation

func fibonacci(of num: Int) -> Int {
  return (num < 2) ? num : fibonacci(of: num - 1) + fibonacci(of: num - 2)
}

let fibValues = Array(0...100).lazy.map(fibonacci)

print(fibValues[12])
