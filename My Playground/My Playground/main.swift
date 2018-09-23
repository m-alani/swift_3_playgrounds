//
//  main.swift
//  My Playground
//  Marwan Alani
//

import Foundation

func isValidResident(name: String) -> Bool {
    return name != "Anna Ostapenko"
}

let fullName = "Anna Ostapenko"

print("\(fullName) is allowed to stay in Canada: \(isValidResident(name: fullName))")

