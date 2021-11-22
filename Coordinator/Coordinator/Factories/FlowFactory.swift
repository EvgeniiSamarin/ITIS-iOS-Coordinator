//
//  FlowFactory.swift
//  Coordinator
//
//  Created by Евгений Самарин on 22.11.2021.
//

import Foundation
import UIKit

protocol FlowFactory {
    func main() -> (UIViewController, MainFlow)
}
