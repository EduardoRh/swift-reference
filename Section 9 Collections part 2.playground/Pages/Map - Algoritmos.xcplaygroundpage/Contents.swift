//: [Previous](@previous)

import Foundation

/*--------------------🔴 - Algoritmos para mapas - 🔴------------------ */
//declaracion
var myArray: Array = [5,8,1,0,3,9,7,2,4,6]

let myDict: Dictionary = [5: "cinco",
              8:"ocho",
              1:"uno",
              0:"cero",
              3:"tres",
              9:"nueve",
              7:"siete",
              2:"dos",
              4:"cuatro",
              6:"seis"]

let mySet: Set = [5,8,1,0,3,9,7,2,4,6]

/*
 MAP - Metodo para transformar los elementos de una coleccion, incluyendo su tipo de dato
 */
//MARK: Map
//Arreglo + 10
print("\n 🔵Suma mas 10: ")
print("Arreglo: ")
print(myArray)
let myMapArray = myArray.map { a in
    return a + 10
}
print("Map - suma 10 a cada elemento")
print(myMapArray)

//Arreglo a String
print("\n 🔵 Conversion a String ")
print("Arreglo: ")
print(myArray)
var myStringMapArray = myArray.map { it -> String in
    return "El numero es: \(it)"
}

print("Map - Conversion en String")
print(myStringMapArray)

//Dictionary a entero
print("\n🔵 Conversion de Dictionary a Entero")
print(" Dictionary: ")
print(myDict)

var myIntMapArray = myDict.map { (it) -> Int in
    return it.key
}

print("Map - Dictionary a Array<Int>")
print(myIntMapArray)

//Set a String
print("\n🔵 Set a String")
print(" Set: ")
print(mySet)

var myStringMapArray2 = mySet.map { (it) -> String in
    return "\(it)"
}

print("Map - Set a Array<String>")
print(myStringMapArray2)
