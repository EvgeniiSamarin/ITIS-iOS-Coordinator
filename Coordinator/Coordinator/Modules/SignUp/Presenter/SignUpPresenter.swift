//
//  SignUpPresenter.swift
//  Coordinator
//
//  Created by Евгений Самарин on 22.11.2021.
//

import Foundation

class SignUpPresenter<V, I>: Presenter<V, I>, SignUpModule where V: SignUpView, I: SignUpInteractor {
    var next: (() -> ())?
    
    var signUp: (() -> ())?
}

extension SignUpPresenter: SignUpPresenterForView {
    func goToJokeScreen() {
        self.signUp?()
    }

    func goToInputPassword() {
        self.next?()
    }
}

extension SignUpPresenter: SignUpInteractorDelegate { }

