//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

func constructRectangle(_ area: Int) -> [Int] {
    var width = Int(sqrt(Double(area)))
    while area % width != 0 { width -= 1 }
    return [area / width, width]
}

print(constructRectangle(26))
