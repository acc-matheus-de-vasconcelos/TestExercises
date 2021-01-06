import XCTest

class RequestBiometryTestCase: XCTestCase {

    var sut: RequestBiometry!

    override func setUp() {
        super.setUp()
        sut = RequestBiometry()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testRequestSucessed() {
        var sucessed: Bool = false
        let expectation = self.expectation(description: #function)
        sut.request { isGranted in
            if isGranted {
                sucessed = true
                expectation.fulfill()
            }
        }

        waitForExpectations(timeout: 2)
        XCTAssertTrue(sucessed)
    }

    func testRequestError() {
        var refused: Bool = false
        let expectation = self.expectation(description: #function)
        sut.request { isGranted in
            if !isGranted {
                refused = true
                expectation.fulfill()
            }
        }

        waitForExpectations(timeout: 2)
        XCTAssertTrue(refused)
    }

}

RequestBiometryTestCase.defaultTestSuite.run()
