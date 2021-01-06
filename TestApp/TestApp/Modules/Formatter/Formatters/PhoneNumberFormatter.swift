//
//  NumberFormatter.swift
//  TestsDoublesSample
//
//  Created by Matheus de Vasconcelos on 25/09/19.
//  Copyright © 2019 Matheus de Vasconcelos. All rights reserved.
//

import Foundation
class PhoneNumberFormatter: Formatter {

    let newPattern = "#####-####"
    let oldPattern = "####-####"

    func canFormat(text: String) -> Bool {
        let cleanText = removeFormat(text: text)
        return cleanText.count == 9 || cleanText.count == 8
    }

    func format(text: String) -> String {
        var cleanText = removeFormat(text: text)
        if canFormat(text: text) {
            let formatPattern = cleanText.count == 9 ? newPattern : oldPattern
            for index in 0..<formatPattern.count {
                let stringIndex = String.Index(utf16Offset: index, in: text)
                let patternCharacter = formatPattern[stringIndex]
                guard patternCharacter != "#" else { continue }
                cleanText.insert(patternCharacter, at: stringIndex)
            }
        }

        return cleanText
    }

    func removeFormat(text: String) -> String {
        return text.replacingOccurrences(of: "-", with: "")
    }

}
