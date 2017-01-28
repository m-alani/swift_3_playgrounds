import Foundation

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

shortNameFromName(name: "Zöe")