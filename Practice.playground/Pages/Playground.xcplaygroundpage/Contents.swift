import Foundation

let arr1 = [Int](0...1000000)
let arr2 = ContiguousArray<Int>(0...1000000)
var start: CFAbsoluteTime, time: CFAbsoluteTime

start = CFAbsoluteTimeGetCurrent()
_ = arr1.reduce(0, +)
time = CFAbsoluteTimeGetCurrent() - start
print("Regular array took ", String(format: "%.3f", time), " seconds")

start = CFAbsoluteTimeGetCurrent()
_ = arr2.reduce(0, +)
time = CFAbsoluteTimeGetCurrent() - start
print("Cont. array took ", String(format: "%.3f", time), " seconds")
