//: [Previous](@previous)

import Foundation

/*--------------------🔴 - Otras operaciones - 🔴------------------ */
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


//MARK: 🔵 - Count
/*
 count: Int Devuelve el numero de elementos en una coleccion
 */
print("🔵 - Count")
print("Array")
print(myArray.count)
print("Dictionary")
print(myDict.count)
print("Set")
print(mySet.count)


//MARK: 🔵 - isEmpty
/*
 isEmpty: Bool devuelve un valor booleano indicando si la coleccion es vacia o no
 */
print("\n🔵 - isEmpty")
print("Array")
print(myArray.isEmpty)
print("Dictionary")
print(myDict.isEmpty)
print("Set")
print(mySet.isEmpty)

//MARK: 🔵 - reversed
/*
 reversed() -> Self devuelve la coleccion con valores invertidos
 */
print("\n🔵 - reversed")
print("Array")
print(myArray.reversed() as [Int])
print("Dictionary")
print(myDict.reversed())
print("Set")
print(mySet.reversed())

//MARK: 🔵 - first o last
/*
 first o last devuelve el primer o el ultimo valor de la coleccion
 */
print("\n🔵 - first o last")
print("Array")
print("first: " + String(myArray.first!) + " last: " + String(myArray.last!))
print("Dictionary")
print(myDict.first!)
print("Set")
print("first: " + String(mySet.first!))

