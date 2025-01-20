//
//  SuperMusician.swift
//  MusicianClass
//
//  Created by Tunahan Acar on 20.01.2025.
//

import Foundation

class ExtraMusician : Musicians{
    
    func sing2(){
        print("enter night")
    }
    
    override func sing(){
        super.sing() // if there is a override func, editor use it first
        print("Exit light")
        
    }
    
    
    
    
}
