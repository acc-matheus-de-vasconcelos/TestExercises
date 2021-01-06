//
//  NetworkError.swift
//  TestsDoublesSample
//
//  Created by Matheus de Vasconcelos on 03/10/19.
//  Copyright © 2019 Matheus de Vasconcelos. All rights reserved.
//

import Foundation

enum NetworkError: Error {
    case requestFailed
    case invalidData
    case responseErro
    case decodeFailure
    case invalidUrl

    var localizedDescription: String {
        switch self {
        case .requestFailed:
            return "Request Failed"
        case .invalidData:
            return "Invalid Data"
        case .responseErro:
            return "Response Error"
        case .decodeFailure:
            return "JSON Parsing Failure"
        case .invalidUrl:
            return "Url is Not Valid"
        }
    }
}
