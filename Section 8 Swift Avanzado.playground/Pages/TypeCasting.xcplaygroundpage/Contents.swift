//: [Previous](@previous)

import Foundation

//Type Casting

let myString = "Eduardo"
let myInt = 26

class MyClass {
    var name: String!
    var age: Int!
}

let myClass = MyClass()

myClass.name = "Eduardo Rodriguez"
myClass.age = 26

let myArray: [Any] = [myString, myInt, myClass]

for item in myArray {
    //Type casting
    if item is String {
        //DownCasting: transformar de una superclase a uno mas restingido
        let myItemString = item as! String
        print("Item es String y tiene el valor \(myItemString)")
    } else if item is Int {
        //Downcasting
        let myItemInt = item as! Int
        print("Item es Entero y tiene el valor \(myItemInt)")
    } else if item is MyClass {
        //Downcasting
        let myItemMyClass = item as! MyClass
        print("Item es MyClass y tiene el valor \(myItemMyClass.name!) y \(myItemMyClass.age!)")
    }
}


for item in myArray {
    if let myItemString = item as? String {
        print("Iten es de tipo String y tiene el valor \(myItemString)")
    } else if let myItemInt = item as? Int {
        print("Iten es de tipo Int y tiene el valor \(myItemInt)")
    } else if let myItemMyClass = item as? MyClass {
        print("Iten es de tipo MyClass y tiene el valor \(myItemMyClass.name!) y \(myItemMyClass.age!)")
    }
}
