import Foundation

class Person {
  let name: String
  let age: Int
  
  lazy var ageInDays: Int = {
    return self.age * 365
  }()
  
  init(name: String, age: Int) {
    self.name = name
    self.age = age
  }
  
}

let myPerson = Person(name: "Marwan", age: 33)

print(myPerson.ageInDays)
