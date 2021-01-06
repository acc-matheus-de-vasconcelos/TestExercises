import Foundation
import XCTest

struct SomeStruct {
    let id: Int
    let name: String
}

class SomeMeasureClass {

    var some = [SomeStruct]()

    init() {
        for i in 0...1000 {
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

class SomeMeasureClassTestCase: XCTestCase {

    var sut: SomeMeasureClass!

    override func setUp() {
        super.setUp()
        sut = SomeMeasureClass()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testAllIdsPerformance() {
        self.measure {
            _ = sut.allIds()
        }
    }

}

SomeMeasureClassTestCase.defaultTestSuite.run()
