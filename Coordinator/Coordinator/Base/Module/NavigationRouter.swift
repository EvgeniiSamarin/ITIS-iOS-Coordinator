//
//  NavigationRouter.swift
//  Coordinator
//
//  Created by Евгений Самарин on 22.11.2021.
//

import UIKit

struct NavigationRouter {

    unowned private let viewController: UIViewController
    private var navigationController: UINavigationController? {
        return viewController.navigationController
    }

    init(viewController: UIViewController) {
        self.viewController = viewController
    }

    func push(animated: Bool, _ make: @escaping () -> UIViewController) -> (() -> ()) {
        return {
            let viewController = make()
            self.navigationController?.pushViewController(viewController, animated: animated)
        }
    }

    func push<Input>(animated: Bool, _ make: @escaping (Input) -> UIViewController) -> ((Input) -> ()) {
        return { input in
            let viewController = make(input)
            self.navigationController?.pushViewController(viewController, animated: true)
        }
    }
}

extension NavigationRouter {

    func push(_ make: @escaping () -> UIViewController) -> (() -> ()) {
        return self.push(animated: true, make)
    }

    func push<Input>(_ make: @escaping (Input) -> UIViewController) -> ((Input) -> ()) {
        return self.push(animated: true, make)
    }
}

extension UIViewController {

    var router: NavigationRouter {
        return NavigationRouter(viewController: self)
    }
}
