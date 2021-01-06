//
//  ImagesService.swift
//  TestsDoublesSample
//
//  Created by Matheus de Vasconcelos on 03/10/19.
//  Copyright © 2019 Matheus de Vasconcelos. All rights reserved.
//

import Foundation

typealias ImagesResult = Result<[Photo], NetworkError>

class ImagesService {

    let client: APIClient
    let url: URL?

    init(client: APIClient) {
        self.client = client
        self.url = URLBuilder(path: "/photos").createURL()
    }

    func fetchImages(completion: @escaping (ImagesResult) -> Void) {
        guard let url = url else {
            completion(.failure(NetworkError.invalidUrl))
            return
        }

        client.request(url) { (result) in
            switch result {
                case .success(let data):
                    let decoder = JSONDecoder()
                    do {
                        let imagesUrls = try decoder.decode([Photo].self, from: data)
                        completion(.success(imagesUrls))
                    } catch {
                        completion(.failure(NetworkError.decodeFailure))
                    }
                case .failure(let error):
                    completion(.failure(error))
            }
        }
    }
}
