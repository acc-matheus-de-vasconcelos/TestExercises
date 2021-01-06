//
//  Photo.swift
//  TestsDoublesSample
//
//  Created by Matheus de Vasconcelos on 03/10/19.
//  Copyright © 2019 Matheus de Vasconcelos. All rights reserved.
//

import Foundation

struct Photo: Decodable {
    var urls: ImageURL
}

struct ImageURL: Decodable {
    var small: String
}
