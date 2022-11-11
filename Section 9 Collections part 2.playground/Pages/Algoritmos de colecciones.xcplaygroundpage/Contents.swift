import Foundation

/*--------------------🔴 - Algoritmos para colecciones - 🔴------------------ */
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

//MARK: 🔵 - Sort
print("🔵 - Sort")
print(myArray)
myArray.sort()
print(myArray)
//ordenamiento personalizado
myArray.sort { (a, b) -> Bool in
    return a > b
}
//los diccionarios y sets no se pueden ordenar de esta manera
//myDict.sort() - No soportado
//mySet.sort() - No soportado

//MARK: 🔵 - Sorted (Ordenacion)
//Sorted deja la lista original intacta y devuelve un objeto del mismo tipo ordenado
print("\n🔵 - Sorted (Ordenacion)")

//Declaracion
var myArray2: Array = [5,8,1,0,3,9,7,2,4,6]
print("Sin ordenar - Array")
print(myArray2)
//Algoritmo
var myArray2Sorted = myArray2.sorted()
print("Ordenado (Sorted) - Array ")
print(myArray2Sorted)

//Custom sorted
myArray2Sorted = Array()
myArray2Sorted = myArray2.sorted(by: { a, b in
    //de mayor a menor
    return a < b
})

print("custom sorted (ascendente) - Array")
print(myArray2Sorted)

/* Set no es ordenado, por lo cual sorted no es compatible. Sin embargo es posible
aplicar un custom sorted en un Dictionary y en un Set. en Set es posible aplicar sorted
 devolviendo un Array*/

//Sorted - set
print("\nSorted - Set")
print(mySet.sorted())
print("custom sorted (ascendente) - Set")
print(mySet.sorted(by: { a, b in
    return a < b
}))

//sorted Dictionary - Se recurre al elemento que se sortea, ya que dictionary es clave-valor

print("\ncustom sorted (ascendente) - Dictionary")
print(myDict.sorted(by: { elA, elB in
    return elA.key < elB.key
}))

