//
//  APIClientDefault.swift
//  TestsDoublesSample
//
//  Created by Matheus de Vasconcelos on 03/10/19.
//  Copyright © 2019 Matheus de Vasconcelos. All rights reserved.
//

import Foundation

class APIClientDefault: APIClient {

    let session: URLSession

    init(session: URLSession = URLSession(configuration: .default)) {
        self.session = session
    }

    func request(_ url: URL, completion: @escaping (APIResult) -> Void) {
        session.dataTask(with: url) { (data, res, err) in
            if let data = data, let response = res as? HTTPURLResponse {
                if response.statusCode == 200 {
                    completion(.success(data))
                } else {
                    completion(.failure(NetworkError.requestFailed))
                }
            }

            if err != nil {
                completion(.failure(NetworkError.requestFailed))
            }
        }.resume()
    }
}
