//
//  Presenter.swift
//  CryptoViper
//
//  Created by Tunahan Acar on 1.06.2025.
//

import Foundation

// talks to -> interactor, router, view

enum NetworkError : Error {
    case networkFailed
    case parsingFailed
}

protocol AnyPresenter {
    var router : AnyRouter? { get set }
    var interactor : AnyInteractor? { get set }
    var view : AnyView? { get set }
    
    func interactorDidDownloadCrypto(result : Result<[Crypto], Error> )
    
}

class CryptoPresenter : AnyPresenter {
    var router : AnyRouter?
    var interactor : AnyInteractor?
    var view : AnyView?
    
    func interactorDidDownloadCrypto(result: Result<[Crypto], Error>) {
        switch (result){
        case .success(let cryptos):
            // view.update
            print("success")
        case .failure(let error):
            // view.update error
            print("error")
            
        }
        
    }
    
}
