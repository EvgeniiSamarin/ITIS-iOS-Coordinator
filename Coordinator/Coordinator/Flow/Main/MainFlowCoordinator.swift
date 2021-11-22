//
//  MainFlowCoordinator.swift
//  Coordinator
//
//  Created by Евгений Самарин on 22.11.2021.
//

import UIKit

class MainFlowCoordinator: Coordinator<FlowNavigationController>, MainFlow {

    // MARK: - Instance Properties

    private let flows: FlowFactory
    private let modules: ModuleFactory

    // MARK: - Initializer

    init(view: FlowNavigationController, flows: FlowFactory, modules: ModuleFactory) {
        self.flows = flows
        self.modules = modules

        super.init(view: view)
    }

    // MARK: - Instance methods

    override func start() {
    }

    private func initialVC() -> UIViewController {
        let (vc, module) = self.modules.startApp()

        module.signUp = vc.router.push(self.signUp)
        module.signIn = vc.router.push(self.signIn)

        return vc
    }

    private func signIn() -> UIViewController {
        let (vc, module) = self.modules.signIn()

        module.signIn = vc.router.push(<#T##make: () -> UIViewController##() -> UIViewController#>) // FIXME: -

        return vc
    }

    private func signUp() -> UIViewController {
        let (vc, module) = self.modules.signUp()

        module.signUp = vc.router.push(<#T##make: () -> UIViewController##() -> UIViewController#>) // FIXME: -
        module.next = vc.router.push(<#T##make: () -> UIViewController##() -> UIViewController#>) // FIXME: -

        return vc
    }
}
