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
    var tenant: Person?
    
    init(unit input: String) {
        self.unit = input
    }
    
    deinit {
        print("\(self.unit) is deallocating")
    }
}

var john: Person? = Person(name: "John")

john = nil

/* ****** Functions for Udacity Course
 
func shortNameFromName(name: String) -> String {
    let input = name.lowercased()
    var output = ""
    let consonants = "bcdfghjklmnpqrstvwxyz".characters
    var firstNonConsonantFound = false
    for char in input.characters {
        if (firstNonConsonantFound) {
            output.append(char)
        } else {
            if (!consonants.contains(char)) {
                output.append(char)
                firstNonConsonantFound = true
            }
        }
    }
    return output
}

// shortNameFromName(name: "Zöe")

func lyricsForName(lyricsTemplate: String, fullName: String) -> String {
    var output = lyricsTemplate.replacingOccurrences(of: "<FULL_NAME>", with: fullName)
    output = output.replacingOccurrences(of: "<SHORT_NAME>", with: shortNameFromName(name: fullName))
    return output
}

let bananaFanaTemplate = [
    "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
    "Banana Fana Fo F<SHORT_NAME>",
    "Me My Mo M<SHORT_NAME>",
    "<FULL_NAME>"].joined(separator: "\n")

print(lyricsForName(lyricsTemplate: bananaFanaTemplate, fullName: "Anna"))
 
 ************/
