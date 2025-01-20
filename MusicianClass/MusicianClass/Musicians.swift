//
//  Musicians.swift
//  MusicianClass
//
//  Created by Tunahan Acar on 20.01.2025.
//

import Foundation

enum MusicianType {
    case LeadGuitar
    case Vocalist
    case Drummer
    case Bassist
    case Vioenist
}

class Musicians {
    
    var name : String
    var age : Int
    var city : String
    var type : MusicianType
    
    
    
    //Initializer (Constractor)
    init(nameInit: String,ageInit: Int,cityInit: String,typeInit: MusicianType) {
        name = nameInit
        age = ageInit
        city = cityInit
        type = typeInit
        print("musician created")
    }
    
    func sing() {
        print("noting else matters")
    }
    
}
