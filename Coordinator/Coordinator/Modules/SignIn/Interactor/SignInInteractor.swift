//
//  SignInInteractor.swift
//  Coordinator
//
//  Created by Евгений Самарин on 22.11.2021.
//

import Foundation

class SignInInteractorImpl: SignInInteractor {

    typealias Delegate = SignInInteractorDelegate
    weak var delegate: Delegate?
}

