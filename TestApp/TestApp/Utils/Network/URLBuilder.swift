//
//  URLBuilder.swift
//  TestsDoublesSample
//
//  Created by Matheus de Vasconcelos on 03/10/19.
//  Copyright © 2019 Matheus de Vasconcelos. All rights reserved.
//

import Foundation

class URLBuilder {
    private let endpoint: String = "https://api.unsplash.com"
    private let clientId: String = "cd5cea5b5b8e03ef359b2ca8868c98da05818689615a630d09c70150be9c8b09"
    private let clientIdName: String = "client_id"
    private let parameters: [String: String]?
    private let path: String

    init(path: String, parameters: [String: String]? = nil) {
        self.parameters = parameters
        self.path = path
    }

    func createURL() -> URL? {
        var components = URLComponents(string: endpoint)
        components?.path = self.path
        components?.queryItems = createParameter()
        return components?.url
    }

    private func createParameter() -> [URLQueryItem] {
        var queryItems: [URLQueryItem] = [URLQueryItem(name: clientIdName, value: clientId)]
        if let dictionaryParameter = parameters {
            for item in dictionaryParameter {
                let queryItem = URLQueryItem(name: item.key, value: item.value)
                queryItems.append(queryItem)
            }
        }
        return queryItems
    }
}

