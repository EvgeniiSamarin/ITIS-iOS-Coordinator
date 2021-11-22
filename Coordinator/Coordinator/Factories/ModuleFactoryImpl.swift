//
//  ModuleFactoryImpl.swift
//  Coordinator
//
//  Created by Евгений Самарин on 22.11.2021.
//

import UIKit

class ModuleFactoryImpl: ModuleFactory {

    // MARK: - Instance Properties

    private let dependencies: Dependencies

    // MARK: - Initializer

    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }

    // MARK: - Instance Methods

    func startApp() -> (UIViewController, StartModule) {
        let view = StartViewController()
        let interactor = StartInteractorImpl()
        let presenter = StartPresenter(view: view, interactor: interactor)
        return (view, presenter)
    }

    func signUp() -> (UIViewController, SignUpModule) {
        let view = SignUpViewController()
        let interactor = SignUpInteractorImpl()
        let presenter = SignUpPresenter(view: view, interactor: interactor)
        return (view, presenter)
    }
    
    func signIn() -> (UIViewController, SignInModule) {
        let view = SignInViewController()
        let interactor = SignInInteractorImpl()
        let presenter = SignInPresenter(view: view, interactor: interactor)
        return (view, presenter)
    }
    
}
