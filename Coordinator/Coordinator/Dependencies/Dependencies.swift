//
//  Dependencies.swift
//  Coordinator
//
//  Created by Евгений Самарин on 22.11.2021.
//

import Foundation

protocol Dependencies {

    // MARK: - Instance Properties

    var moduleFactory: ModuleFactory { get }
    var flowFactory: FlowFactory { get }
}
