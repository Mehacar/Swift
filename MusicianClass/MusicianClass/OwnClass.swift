//
//  OwnClass.swift
//  MusicianClass
//
//  Created by Tunahan Acar on 20.01.2025.
//

import Foundation

enum Department {
    case technology
    case finance
    case marketing
    case operations
    case humanResources
}
class OwnClass {
    var name: String
    var age: Int
    var department: Department

    init(nameInit: String, ageInit: Int, departmentInit: Department){
        name = nameInit
        age = ageInit
        department = departmentInit
    }

    func printExecutiveInfo(){

    }

    
}

let Steave = OwnClass(nameInit: "Steave", ageInit: 30,departmentInit: .operations)

