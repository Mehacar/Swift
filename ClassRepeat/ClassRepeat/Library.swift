//
//  Library.swift
//  ClassRepeat
//
//  Created by Tunahan Acar on 31.07.2025.
//
enum LibraryType {
    case novel
    case story
    case kids
}
class Library {
    
    //property
    var name : String
    var date : String
    var count : Int
    var type : LibraryType
    
    //Initializer
    init(nameInit:String, dateInit:String, countInit:Int, typeInit: LibraryType){
        name = nameInit
        date = dateInit
        count = countInit
        type = typeInit
        
    }
    //method
    func borrowed(){
        print("Tunahan")
    }
}
