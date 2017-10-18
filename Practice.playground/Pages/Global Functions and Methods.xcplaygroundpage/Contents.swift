import Foundation

let string = "Hello World 🚀"
for char in string.utf8 {
  print(UnicodeScalar(char + 1))
}
