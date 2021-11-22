//
//  DependenciesImpl.swift
//  Coordinator
//
//  Created by Евгений Самарин on 22.11.2021.
//

import Foundation

class DependeciesImpl: Dependencies {
    
    lazy var moduleFactory: ModuleFactory = ModuleFactoryImpl(dependencies: self)
    lazy var flowFactory: FlowFactory = FlowFactoryImpl(dependencies: self)
}
