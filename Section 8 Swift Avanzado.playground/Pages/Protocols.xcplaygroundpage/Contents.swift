//: [Previous](@previous)

import Foundation

//Protocolos

protocol PersonProtocol {
    var name: String { get set }
    var age: Int { get set }
    
    func fullName() -> String
}

struct Programmer: PersonProtocol {
    var name: String
    var age: Int
    var language: String
    
    func fullName() -> String {
        return "El nombre es \(name), edad: \(age) y su lenguaje favorito es \(language)"
    }
}

struct Teacher: PersonProtocol {
    var name: String
    var age: Int
    var subject: String
    
    func fullName() -> String {
        return "El nombre es \(name), edad: \(age) e imparte la asignatura de \(subject)"
    }
}

let myProgrammer = Programmer(name: "Eduardo", age: 26, language: "Swift")
let myTeacher = Teacher(name: "Pedro", age: 32, subject: "Calculo")

print(myProgrammer.fullName())
print(myTeacher.fullName())


//Protocolo delegado

protocol SecondClassProtocol {
    func call()
}

class FirstClass: SecondClassProtocol {
    func callSecond() {
        let secondClass = SecondClass()
        secondClass.delegate = self
        secondClass.callFirst()
    }
    
    func call() {
        print("espere 10 segundos y estoy de vuelta")
    }
}

class SecondClass {
    var delegate: SecondClassProtocol?
    
    func callFirst() {
        print("espere...")
        sleep(10)
        delegate?.call()
    }
}

let firstClass = FirstClass()
firstClass.callSecond()
