//
//  ModuleFactory.swift
//  Coordinator
//
//  Created by Евгений Самарин on 22.11.2021.
//

import Foundation
import UIKit

protocol ModuleFactory {

    // MARK: - Instance Methods

    func startApp() -> (UIViewController, StartModule)
//    func joke() -> (UIViewController, JokeModule)
    func signUp() -> (UIViewController, SignUpModule)
    func signIn() -> (UIViewController, SignInModule)
}
