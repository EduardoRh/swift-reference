//: [Previous](@previous)

import Foundation

let myStringNumber = "100"
let myIntNumber = Int(myStringNumber)

let myWrongStringNumber = "Eduardo"
let myWrongIntNumber: Int? = Int(myWrongStringNumber)

var MyOptionalString: String?
print(MyOptionalString)

MyOptionalString = nil

if MyOptionalString != nil {
    print("No nulo")
} else {
    print("valor nulo")
}
