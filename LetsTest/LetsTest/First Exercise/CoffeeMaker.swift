//
//  CoffeeMaker.swift
//  LetsTest
//

import Foundation

// Based on the test structure passed. Try making tests for this class.

struct Coffee {
    var haveMilk: Bool
    var isStrong: Bool
}

class CoffeeMaker {

    static func makeLatte() -> Coffee {
        return Coffee(haveMilk: true, isStrong: false)
    }

    static func makeEspresso() -> Coffee {
        return  Coffee(haveMilk: false, isStrong: true)
    }

}
