//
//  StartModule.swift
//  Coordinator
//
//  Created by Евгений Самарин on 22.11.2021.
//

import Foundation

protocol StartModule: AnyObject {
    var signIn: (() -> ())? { get set }
    var signUp: (() -> ())? { get set }
}

protocol StartView: View { }

protocol StartPresenterForView: AnyObject {
    func goToSignIn()
    func goToSignUp()
}

protocol StartInteractor: Interactor { }

protocol StartInteractorDelegate: AnyObject { }
