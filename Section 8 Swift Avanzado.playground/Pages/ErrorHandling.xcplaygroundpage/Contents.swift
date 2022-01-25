//: [Previous](@previous)

import Foundation

func sum(firstNumber: Int?, secondNumber: Int?) throws -> Int {
    
    if firstNumber == nil {
        throw sumError.firstNumberNil
    } else if secondNumber == nil {
        throw sumError.secondNumberNil
    } else if firstNumber! < 0 || secondNumber! < 0 {
        throw sumError.numberNegative(firstNumber: firstNumber!, secondNumber: secondNumber!)
    }
    
    return firstNumber!  + secondNumber!
}
 //Definicion de tipos de errores

enum sumError: Error  {
    case firstNumberNil
    case secondNumberNil
    case numberNegative(firstNumber: Int, secondNumber: Int)
}

//Propagacion de errores

do {
    print(try sum(firstNumber: nil, secondNumber: 100))
} catch  sumError.firstNumberNil {
    print("primer numero nulo")
} catch sumError.secondNumberNil {
    print("segundo numero nulo")
} catch sumError.numberNegative(let firstNumber, let secondNumber) {
    print("numeros negativos")
}
