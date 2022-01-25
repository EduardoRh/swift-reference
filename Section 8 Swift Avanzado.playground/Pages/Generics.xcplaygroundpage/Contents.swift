//: [Previous](@previous)

import Foundation

//Genericos

//Sin genericos
func swapTwoInts(a: inout Int, b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}

var myFirstInt = 5
var mySecondInt = 10
print("El prime valor es \(myFirstInt) y el segundo valor es \(mySecondInt)")
swapTwoInts(a: &myFirstInt, b: &mySecondInt)
print("El prime valor es \(myFirstInt) y el segundo valor es \(mySecondInt)")

//Con genericos
//Genericos: T, U <T,U>
func swapTwoGenerics<T>(a: inout T, b: inout T) {
    let tempA = a
    a = b
    b = tempA
}

var myFirstGeneric = "Hola"
var mySecondGeneric = "Mundo"
print("El prime valor es \(myFirstGeneric) y el segundo valor es \(mySecondGeneric)")
swapTwoGenerics(a: &myFirstGeneric, b: &mySecondGeneric)
print("El prime valor es \(myFirstGeneric) y el segundo valor es \(mySecondGeneric)")
