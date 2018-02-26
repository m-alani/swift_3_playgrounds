import Foundation

let auth = (name: "Marwan", pass: "password")

switch auth {
case ("Marwan", "password"):
  print("Welcome, \(auth.name)")
default:
  print("Access Denied!")
}
