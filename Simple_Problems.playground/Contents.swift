import Foundation

func shortNameFromName(name: String) -> String {
    let input = name.lowercased()
    var output = ""
    let vowels = "aouie".characters
    var firstVowelFound = false
    for char in input.characters {
        if (firstVowelFound) {
            output.append(char)
        } else {
            if (vowels.contains(char)) {
                output.append(char)
                firstVowelFound = true
            }
        }
    }
    return output
}

shortNameFromName(name: "Ally")