//
//  Interactor.swift
//  Coordinator
//
//  Created by Евгений Самарин on 22.11.2021.
//

import Foundation

class StartInteractorImpl: StartInteractor {

    typealias Delegate = StartInteractorDelegate
    weak var delegate: Delegate?
}
