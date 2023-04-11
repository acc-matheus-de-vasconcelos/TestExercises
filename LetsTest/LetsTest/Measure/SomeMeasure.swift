//
//  SomeMeasure.swift
//  LetsTest
//

import Foundation

struct SomeStruct {
    let id: Int
    let name: String
}

class SomeMeasure {

    var some = [SomeStruct]()

    init() {
        for i in 0...1_000_000 {
            some.append(SomeStruct(id: i, name: "Name\(i)"))
        }
    }

    func allIds() -> [Int] {
        var ids = [Int]()
        for i in 0..<some.count {
            ids.append(some[i].id)
        }
        return ids
    }

}
