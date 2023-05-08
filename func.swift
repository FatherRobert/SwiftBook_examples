//
//  func.swift
//  Lessons SwiftMe - FirstApp
//
//  Created by Robert Aznavur on 08.05.2023.
//

import Foundation

func getArgumentFromConsole(ArgNumber: UInt8) -> Int {
    print("Введите число № \(ArgNumber).")
    var result = 0
    for _ in 0... {
        guard let a = Int(readLine() ?? "") else {
            print("Вы ввели неверное значение, попробуйте еще раз")
            continue
        }
        result = a
        break
    }
    return result
}

func Operation(_ a:[Int]) -> Double {
    print("Введите символ арифметического действия")
    var operation = readLine()
    var result: Double = 0
    switch operation {
    case "*": result = Double(a.reduce(1,*))
    case "+": result = Double(a.reduce(0,+))
    case "-": result = Double(a.reduce(0,-))
    case "/",":" : result = Double(a[0]); for j in 1..<a.count {
        result /= Double(a[j])
    }
    case "^" where z == 2: result = pow(Double(a[0]), Double(a[1]))
    default: print("неверный ввод, попробуйте еще раз"); operation = readLine()
    }
    return result
}

func getArgumentCount()-> UInt8 {
    print("Введите количество аргументов.")
    var result: UInt8 = 0
    for _ in 0... {
      
        guard let a = UInt8(readLine() ?? "") else {
            print("Вы ввели неверное значение, попробуйте еще раз")
            continue
        }
        guard a > 1 else {
            print("Введенное значение должно быть не менее 2")
            continue
        }
       result = UInt8(a)
        break
    }
    return result
}
