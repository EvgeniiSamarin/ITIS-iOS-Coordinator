//
//  FlowFactory.swift
//  Coordinator
//
//  Created by Евгений Самарин on 22.11.2021.
//

import Foundation
import UIKit

protocol FlowFactory {

    // MARK: - Instance Methods

    func main() -> (UIViewController, MainFlow)
}
