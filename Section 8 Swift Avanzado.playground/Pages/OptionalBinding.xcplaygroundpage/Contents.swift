//: [Previous](@previous)

import Foundation

var myOptionalString: String?

myOptionalString = "Hola"

//Valor empaquetado = valor diferente de valor nil

//verificacion de valor nil
//Desempaquetado opcional
if let myString = myOptionalString {
    print(myString)
} else {
    print(myOptionalString)
}


//Desempaquetado forzado = obtener valor cuando estamos seguros de que no es nil
print(myOptionalString!)
