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
