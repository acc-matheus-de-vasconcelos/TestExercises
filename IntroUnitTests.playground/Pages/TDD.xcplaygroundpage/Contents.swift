import XCTest

protocol CalculatorProtocol {
    func sum(_ p1: Int, _ p2: Int) -> Int
    func sub(_ p1: Int, _ p2: Int) -> Int
}

class CalculatorScreenTestCase: XCTestCase {

    var sut: CalculatorProtocol!

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
        sut = nil
    }

    func testSum() {

    }

    func testSub() {

    }

}

CalculatorScreenTestCase.defaultTestSuite.run()
