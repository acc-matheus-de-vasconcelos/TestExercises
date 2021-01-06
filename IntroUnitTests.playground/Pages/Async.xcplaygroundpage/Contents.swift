import Foundation
import XCTest

class MotorcycleCourier {

    func getOrder(result: @escaping (Bool) -> Void) {
        Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false) { timer in
            result(true)
            timer.invalidate()
        }
    }

}

class MotorcycleCourierTestCase: XCTestCase {

    var sut: MotorcycleCourier!

    override func setUp() {
        super.setUp()
        sut = MotorcycleCourier()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testGetOrder() {
        sut.getOrder { result in
            XCTAssertTrue(result)
        }
    }

}

MotorcycleCourierTestCase.defaultTestSuite.run()
