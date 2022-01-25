import Foundation

/*---------------------- 🔴 - CONJUNTOS - 🔴 ----------------------*/

/* Los Sets o conjuntos son arreglos de un tipo definido y no llevan un orden*/

//Declaracion
var mySet = Set<String>()
let mySet2: Set<String> = ["Eduardo", "Rodriguez", "27"]
//No se admiten repetidos
let myset3: Set = ["Eduardo", "Rodriguez", "27", "Eduardo"]

//MARK: 🟦 - Insercion de uno en uno
print("\n🟦 - Insercion de uno en uno")
mySet.insert("Eduardo")
mySet.insert("Rodriguez")
mySet.insert("27")
mySet.insert("Daniel")
print(mySet)

//MARK: 🟦 - Acceso
print("\n🟦 - Acceso")
//solo se limita a saber si existe o no
if mySet.contains("Pedro") {
    print("Existe")
} else {
    print("No existe")
}


//MARK: 🟦 - Modificacion
print("\n🟦 - Modificacion")
mySet.remove("27")
print(mySet)

//MARK: 🟦 - Acceso y modificacion por indice
//Se tiene qe eliminar a otros elementos
print("\n🟦 - Acceso y modificacion por indice")
if let index = mySet.firstIndex(of: "Daniel") {
    mySet.remove(at: index)
}
print(mySet)

//MARK: 🟦 - Iteracion
//Agregar mas elementos
print("\n🟦 - Iteracion")
mySet.insert("27")
mySet.insert("EDRH")
mySet.insert("Hernandez")
mySet.insert("Curso swift")

for myElement in mySet {
    print(myElement)
}

//MARK: 🟦 - Operaciones de conjunto
print("🟦 - Operaciones de conjunto")

//Declaracion
let myIntSet: Set = [1, 2, 3, 4, 5]
let myIntSet2: Set = [6, 3, 2, 9, 10]

//Interseccion
print("🔹 -  Interseccion")
print(myIntSet.intersection(myIntSet2))

//Diferencia simetrica
print("🔹 -  Diferencia simetrica")
print(myIntSet.symmetricDifference(myIntSet2))

//Union
print("🔹 -  Union")
print(myIntSet.union(myIntSet2))

//Interseccion
print("🔹 -  Interseccion")
print(myIntSet.intersection(myIntSet2))

//Sustraccion
print("🔹 -  Sustraccion")
print(myIntSet.subtracting(myIntSet2))
print(myIntSet2.subtracting(myIntSet))
