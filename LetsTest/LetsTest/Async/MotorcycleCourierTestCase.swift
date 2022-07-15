//
//  MotorcycleCourierTestCase.swift
//  LetsTestTests
//

import XCTest
@testable import class LetsTest.MotorcycleCourier

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
        // This test is incorrect. Fix it.
        sut.getOrder { result in
            XCTAssertTrue(result)
        }
    }

}
