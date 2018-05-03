import Foundation

var numbers = [28, -10, 11, 4, 99, 7, 0]

let ascNumbers = numbers.sorted()
let decNumbers = numbers.sorted(by: >)

let subPositiveArrays = numbers.split(whereSeparator: {$0 < 0}) // Returns ArraySlice

let arr1 = [Int](0...1000000)
let arr2 = ContiguousArray<Int>(0...1000000)
var start: CFAbsoluteTime, time: CFAbsoluteTime

start = CFAbsoluteTimeGetCurrent()
_ = arr1.reduce(0, +)
time = CFAbsoluteTimeGetCurrent() - start
print("Regular array took ", String(format: "%.2f", time), " seconds")

start = CFAbsoluteTimeGetCurrent()
_ = arr2.reduce(0, +)
time = CFAbsoluteTimeGetCurrent() - start
print("Cont. array took ", String(format: "%.2f", time), " seconds")
