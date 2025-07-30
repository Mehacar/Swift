//
//  Router.swift
//  CryptoViper
//
//  Created by Tunahan Acar on 1.06.2025.
//

import Foundation

// talks to -> presenter
// Entry point

protocol AnyRouter {
    static func startExecution() -> AnyRouter
    
}

class CryptoRouter : AnyRouter {
    static func startExecution() -> AnyRouter {
        
        let router = CryptoRouter()
        return router
    }
    
    
}
