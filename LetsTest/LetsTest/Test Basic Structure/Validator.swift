//
//  Validator.swift
//  LetsTest
//

import Foundation

// This is a sample Validator we'll use to teach the basic test structure
class Validator {

    func isValid(text: String) -> Bool {
        return text.count > 10
    }

    func isValid(number: Int) -> Bool {
        return number > 0 && number % 2 == 0
    }

}
