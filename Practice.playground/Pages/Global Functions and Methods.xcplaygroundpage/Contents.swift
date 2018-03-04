import Foundation

let name: String? = "Marwan"
let mail: String? = "marwan@alani.ca"
let ip: String? = "127.0.0.1"

let user = (name, mail, ip)

switch user {
case let (name?, _, "127.0.0.1"?):
  print("\(name) is connecting using localhost")
case let (name?, mail?, _):
  print("Hi \(name)")
case let (nil, mail?, _):
  print("Hi there!")
default:
  print("Acess Denied")
}

