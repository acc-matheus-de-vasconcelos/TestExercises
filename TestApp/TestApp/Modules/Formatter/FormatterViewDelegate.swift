//
//  FormatterViewDelegate.swift
//  TestsDoublesSample
//
//  Created by Matheus de Vasconcelos on 25/09/19.
//  Copyright © 2019 Matheus de Vasconcelos. All rights reserved.
//

import Foundation
protocol FormatterViewDelegate: class {
    func didFormat(text: String) -> String
}
