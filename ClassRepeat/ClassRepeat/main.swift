//
//  main.swift
//  ClassRepeat
//
//  Created by Tunahan Acar on 31.07.2025.





// Repead of Class(property, mothod,Initializer) and interitance and enum


let Book1 = Library(nameInit: "New Life", dateInit: "01/01/1999", countInit: 12, typeInit: .kids)

//print(Book1.name)
//print(Book1.type)

let SpecialBook = PrivateLibrary(nameInit: "Star", dateInit: "03/05/1987", countInit: 3, typeInit: .novel)

print(SpecialBook.date)
SpecialBook.borrowed()
