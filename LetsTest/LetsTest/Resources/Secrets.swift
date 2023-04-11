
// You found our secrets file. Here lies all the answers to the exercises.

// MARK: - Private Methods

/**
 
 func test_playpop() {
     sut.playMusic(type: .pop)
     
     guard case .name(let musicName) = sut.currentMusic else {
         return XCTFail("No music encoutered")
     }
     
     XCTAssertEqual(musicName, "Toxic")
 }
 
 */

// MARK: - Measure

/**
 
 import XCTest
 @testable import class LetsTest.SomeMeasure
 @testable import struct LetsTest.SomeStruct


 class SomeMeasureClassTestCase: XCTestCase {

     var sut: SomeMeasure!

     override func setUp() {
         super.setUp()
         sut = SomeMeasure()
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
 
 */

// MARK: - Avoid Crash Unwrap

/**
 func testNotTime() {
     let remind = sut.reminders.first
     remind?.time = 15

     XCTAssertEqual(false, remind?.shouldTakePill())
 }

 func testIsTime() {
     let remind = sut.reminders.first
     remind?.time = 6

     XCTAssertEqual(true, remind?.shouldTakePill())
 }
 */

// MARK: - Async

/**
 func testGetOrder() {
     var receivedResult = false
     let expectation = XCTestExpectation(description: "testGetOrder")
     
     sut.getOrder { result in
         receivedResult = result
         expectation.fulfill()
     }
     
     wait(for: [expectation], timeout: 3)
     
     XCTAssertTrue(receivedResult)

 }
 */
