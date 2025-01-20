//
//  main.swift
//  MusicianClass
//
//  Created by Tunahan Acar on 20.01.2025.
//

import Foundation

let james = Musicians(nameInit: "James Hetfield", ageInit: 56, cityInit: "Istanbul", typeInit: .Vocalist) //object is james

//print(james.city)
//print(james.type)
//james.sing()

//Inharitance
let kirk = ExtraMusician(nameInit: "Kirk", ageInit: 60, cityInit: "Ankara", typeInit: .LeadGuitar)
kirk.sing()
//kirk.sing2()


