//
//  MainflowCoordinator.swift
//  Coordinator
//
//  Created by Евгений Самарин on 22.11.2021.
//

import Foundation

class MainFlowCoordinator: Coordinator<FlowNavigationController>, MainFlow {

    private let flows: FlowFactory
    private let modules: ModuleFactory

    init(view: FlowNavigationController, flows: FlowFactory, modules: ModuleFactory) {
        self.flows = flows
        self.modules = modules

        super.init(view: view)
    }

    override func start() {
    }
}
