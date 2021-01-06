//
//  Formatter.swift
//  TestsDoublesSample
//
//  Created by Matheus de Vasconcelos on 25/09/19.
//  Copyright © 2019 Matheus de Vasconcelos. All rights reserved.
//

import Foundation
protocol Formatter {
    func canFormat(text: String) -> Bool
    func format(text: String) -> String
    func removeFormat(text: String) -> String
}
