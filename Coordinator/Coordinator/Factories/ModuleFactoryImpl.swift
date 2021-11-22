//
//  ModuleFactoryImpl.swift
//  Coordinator
//
//  Created by Евгений Самарин on 22.11.2021.
//

import UIKit

class ModuleFactoryImpl: ModuleFactory {

    private let dependencies: Dependencies

    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }

    func startApp() -> (UIViewController, StartModule) {
        let view = StartViewController()
        let interactor = StartInteractorImpl()
        let presenter = StartPresenter(view: view, interactor: interactor)
        return (view, presenter)
    }
}
