//: [Previous](@previous)
import Foundation

// TODO: Implement placeFirstLetterLast() here!
func placeFirstLetterLast(of input: String) -> String {
    let firstLetter = input.characters.first!
    var output = input
    output.remove(at: input.startIndex)
    output.append(firstLetter)
    return output
}
//: [Next](@next)
