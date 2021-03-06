import Foundation

/*---------------------- š“ - CONJUNTOS - š“ ----------------------*/

/* Los Sets o conjuntos son arreglos de un tipo definido y no llevan un orden*/

//Declaracion
var mySet = Set<String>()
let mySet2: Set<String> = ["Eduardo", "Rodriguez", "27"]
//No se admiten repetidos
let myset3: Set = ["Eduardo", "Rodriguez", "27", "Eduardo"]

//MARK: š¦ - Insercion de uno en uno
print("\nš¦ - Insercion de uno en uno")
mySet.insert("Eduardo")
mySet.insert("Rodriguez")
mySet.insert("27")
mySet.insert("Daniel")
print(mySet)

//MARK: š¦ - Acceso
print("\nš¦ - Acceso")
//solo se limita a saber si existe o no
if mySet.contains("Pedro") {
    print("Existe")
} else {
    print("No existe")
}


//MARK: š¦ - Modificacion
print("\nš¦ - Modificacion")
mySet.remove("27")
print(mySet)

//MARK: š¦ - Acceso y modificacion por indice
//Se tiene qe eliminar a otros elementos
print("\nš¦ - Acceso y modificacion por indice")
if let index = mySet.firstIndex(of: "Daniel") {
    mySet.remove(at: index)
}
print(mySet)

//MARK: š¦ - Iteracion
//Agregar mas elementos
print("\nš¦ - Iteracion")
mySet.insert("27")
mySet.insert("EDRH")
mySet.insert("Hernandez")
mySet.insert("Curso swift")

for myElement in mySet {
    print(myElement)
}

//MARK: š¦ - Operaciones de conjunto
print("š¦ - Operaciones de conjunto")

//Declaracion
let myIntSet: Set = [1, 2, 3, 4, 5]
let myIntSet2: Set = [6, 3, 2, 9, 10]

//Interseccion
print("š¹ -  Interseccion")
print(myIntSet.intersection(myIntSet2))

//Diferencia simetrica
print("š¹ -  Diferencia simetrica")
print(myIntSet.symmetricDifference(myIntSet2))

//Union
print("š¹ -  Union")
print(myIntSet.union(myIntSet2))

//Interseccion
print("š¹ -  Interseccion")
print(myIntSet.intersection(myIntSet2))

//Sustraccion
print("š¹ -  Sustraccion")
print(myIntSet.subtracting(myIntSet2))
print(myIntSet2.subtracting(myIntSet))
