//
//  SignInModule.swift
//  Coordinator
//
//  Created by Евгений Самарин on 22.11.2021.
//

import Foundation

protocol SignInModule: AnyObject {
    var signIn: (() -> ())? { get set }
}

protocol SignInView: View { }

protocol SignInPresenterForView: AnyObject {
    func goToJokeScreen()
}

protocol SignInInteractor: Interactor { }

protocol SignInInteractorDelegate: AnyObject { }
