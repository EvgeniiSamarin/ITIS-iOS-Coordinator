//
//  StartPresenter.swift
//  Coordinator
//
//  Created by Евгений Самарин on 22.11.2021.
//

import Foundation

class StartPresenter<V, I>: Presenter<V, I>, StartModule where V: StartView, I: StartInteractor {
    var signIn: (() -> ())?
    
    var signUp: (() -> ())?
}

extension StartPresenter: StartPresenterForView {

    func goToSignIn() {
        self.signIn?()
    }

    func goToSignUp() {
        self.signUp?()
    }
}

extension StartPresenter: StartInteractorDelegate { }
