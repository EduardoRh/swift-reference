//: [Previous](@previous)

import Foundation

/*--------------------🔴 - Algoritmos ForEach - 🔴------------------ */
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


//Foreach Array
myArray.forEach { it in
    print(it)
}

print("\n------\n")
//Foreach Dictionary
myDict.forEach { it in
    print("key: " + String(it.key) + " val: " + it.value)
}

print("\n------\n")
//Foreach Set
mySet.forEach { it in
    print(it)
}
