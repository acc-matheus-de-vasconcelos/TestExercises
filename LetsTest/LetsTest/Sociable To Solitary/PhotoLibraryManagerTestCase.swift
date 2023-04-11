//
//  PhotoLibraryManagerTestCase.swift
//  LetsTestTests
//

import XCTest
@testable import class LetsTest.PhotoLibraryManager

class PhotoLibraryManagerTestCase: XCTestCase {

    var sut: PhotoLibraryManager!

    override func setUp() {
        super.setUp()
        sut = PhotoLibraryManager()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testAlreadyHavePermission() {
        let expectation = XCTestExpectation(description: #function)
        var result: Bool = false
        sut.RequestAccess { (RequestResult) in
            result = RequestResult
            expectation.fulfill()
        }

        wait(for: [expectation], timeout: 1)
//        XCTAssertTrue(result)
        print(result)
    }

    func testAlreadyDeniedPermission() {
        let expectation = XCTestExpectation(description: #function)
        var result: Bool = true
        sut.RequestAccess { (RequestResult) in
            result = RequestResult
            expectation.fulfill()
        }

        wait(for: [expectation], timeout: 1)
//        XCTAssertFalse(result)
        print(result)
    }


}
