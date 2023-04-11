//
//  ReminderTestCase.swift
//  LetsTestTests
//

import XCTest
@testable import class LetsTest.Reminder
@testable import class LetsTest.RemindKeeper

class ReminderTestCase: XCTestCase {

    var sut: RemindKeeper!

    override func setUp() {
        super.setUp()
        sut = RemindKeeper()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    // The tests above are depending on force-unwrap, which can lead to crash the tests. Let's try to change that.
    func testNotTime() {
        let remind = sut.reminders.first!
        remind.time = 15

        XCTAssertFalse(remind.shouldTakePill())
    }

    func testIsTime() {
        let remind = sut.reminders.first!
        remind.time = 6

        XCTAssertTrue(remind.shouldTakePill())
    }

}
