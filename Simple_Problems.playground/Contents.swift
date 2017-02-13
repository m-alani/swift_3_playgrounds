import Foundation

class Person {
    var name: String
    var apartment: Apartment?
    
    init(name input: String) {
        self.name = input
    }
    
    deinit {
        print("\(self.name) is deallocating")
    }
}

class Apartment {
    var unit: String
    weak var tenant: Person?
    
    init(unit input: String) {
        self.unit = input
    }
    
    deinit {
        print("\(self.unit) is deallocating")
    }
}

var john: Person? = Person(name: "John")
var a4: Apartment? = Apartment(unit: "A4")

john?.apartment = a4
a4?.tenant = john

a4?.tenant?.name
john = nil
a4?.tenant?.name
a4 = nil
