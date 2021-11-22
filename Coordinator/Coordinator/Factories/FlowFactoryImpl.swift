//
//  FlowFactoryImpl.swift
//  Coordinator
//
//  Created by Евгений Самарин on 22.11.2021.
//

import UIKit

class FlowFactoryImpl: FlowFactory {

    private let dependencies: Dependencies

    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }

    func main() -> (UIViewController, MainFlow) {
        let view = MainFlowNavigationController()
        let flow = MainFlowCoordinator(view: view, flows: dependencies.flowFactory, modules: dependencies.moduleFactory)

        return (view, flow)
    }
}
