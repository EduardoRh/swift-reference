//: [Previous](@previous)

import Foundation

class Student {
    var name: String?
    var book: Book?
}

class Book {
    var pages: Int?
}

let myStudent = Student()

//(Opcional) Iniciar valores
myStudent.name = "Eduardo"
let myBook = Book()
myBook.pages = 100
myStudent.book = myBook 

print(myStudent.name)
print(myStudent.book?.pages)

//Enlace opcional encadenado
if let pages = myStudent.book?.pages, let name = myStudent.name  {
    print("El libro de \(name) tiene \(pages) paginas")
} else {
    print("El libro no tiene paginas")
}
