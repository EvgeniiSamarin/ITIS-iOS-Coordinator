//
//  FlowFactoryImpl.swift
//  Coordinator
//
//  Created by Евгений Самарин on 22.11.2021.
//

import UIKit

class FlowFactoryImpl: FlowFactory {

    // MARK: - Instance Properties

    private let dependencies: Dependencies

    // MARK: - Initializer

    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }

    // MARK: - Instance Methods

    func main() -> (UIViewController, MainFlow) {
        let view = MainFlowNavigationController()
        let flow = MainFlowCoordinator(view: view, flows: dependencies.flowFactory, modules: dependencies.moduleFactory)

        return (view, flow)
    }
}
