//
//  main.swift
//  Lessons SwiftMe - FirstApp
//
//  Created by Robert Aznavur on 08.05.2023.
//

import Foundation

let z = getArgumentCount()

var arguments = [Int]()
for i in 1...z {
    arguments.append(getArgumentFromConsole(ArgNumber: i))
}

print("Your operation result is \(Operation(arguments))")

