//
//  SignUpModule.swift
//  Coordinator
//
//  Created by Евгений Самарин on 22.11.2021.
//

import Foundation

protocol SignUpModule: AnyObject {
    var next: (() -> ())? { get set }
    var signUp: (() -> ())? { get set }
}

protocol SignUpView: View { }

protocol SignUpPresenterForView: AnyObject {
    func goToJokeScreen()
    func goToInputPassword()
}

protocol SignUpInteractor: Interactor { }

protocol SignUpInteractorDelegate: AnyObject { }

