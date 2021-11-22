//
//  SignInPresenter.swift
//  Coordinator
//
//  Created by Евгений Самарин on 22.11.2021.
//

import Foundation

class SignInPresenter<V, I>: Presenter<V, I>, SignInModule where V: SignInView, I: SignInInteractor {
    var signIn: (() -> ())?
}

extension SignInPresenter: SignInPresenterForView {
    func goToJokeScreen() {
        self.signIn?()
    }
}

extension SignInPresenter: SignInInteractorDelegate { }
