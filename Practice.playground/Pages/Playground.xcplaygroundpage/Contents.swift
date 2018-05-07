import Foundation

let arr = [72, 44, 39, nil, -1, 0, 99]

var lazyArray = arr.lazy.flatMap({ $0 }).filter({ $0 > 0 })

print(Array(lazyArray))
