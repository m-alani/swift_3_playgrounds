//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Attempt to squeeze everything into 1 line, and preferrably make it unreadable ... because I'm l33t
print(String(readLine()!)!.characters.filter({"ABCDEFGHIJKLMNOPQRSTUVWXYZ".contains(String($0))}).count+1)
