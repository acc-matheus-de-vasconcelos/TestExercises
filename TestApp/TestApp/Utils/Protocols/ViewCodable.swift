//
//  ViewCodable.swift
//  TestsDoublesSample
//
//  Created by Matheus de Vasconcelos on 20/09/19.
//  Copyright © 2019 Matheus de Vasconcelos. All rights reserved.
//

import Foundation
protocol ViewCodable {
    func configure()
    func buildHierarchy()
    func buildConstraints()
    func render()
    func setupView()
}

extension ViewCodable {

    func configure() { }

    func render() { }

    func setupView() {
        configure()
        buildHierarchy()
        buildConstraints()
        render()
    }
}
