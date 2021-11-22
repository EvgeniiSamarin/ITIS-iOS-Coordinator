//
//  Coordinator.swift
//  Coordinator
//
//  Created by Евгений Самарин on 22.11.2021.
//

import Foundation

class Coordinator<View>: Flow where View: FlowHolder {

    weak var view: View?

    init(view: View) {
        self.view = view
        view.flow = self
    }

    func start() {}
}
