//
//  Family.swift
//  Class&method
//
//  Created by Tunahan Acar on 13.05.2025.
//

class Family {
    // Property
    var name : String
    var surname : String
    var age : Int
    
    init(nameInit: String, surnameInit: String, ageInit: Int){
        name = nameInit
        surname = surnameInit
        age = ageInit
    }
    
    func sing(){ // sing is method
        print("nothing else matters")
    }

}
