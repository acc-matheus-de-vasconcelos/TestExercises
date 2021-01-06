//
//  APIClient.swift
//  TestsDoublesSample
//
//  Created by Matheus de Vasconcelos on 03/10/19.
//  Copyright © 2019 Matheus de Vasconcelos. All rights reserved.
//

import Foundation

typealias APIResult = Result<Data, NetworkError>

protocol APIClient {
    func request(_ url: URL, completion: @escaping (APIResult) -> Void)
}
