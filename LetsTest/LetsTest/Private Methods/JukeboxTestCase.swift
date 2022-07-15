//
//  JukeboxTestCase.swift
//  LetsTestTests
//

import XCTest
@testable import class LetsTest.JukeBox
@testable import enum LetsTest.Music
@testable import enum LetsTest.MusicType


class JukeboxTestCase: XCTestCase {

    var sut: JukeBox!

    override func setUp() {
        super.setUp()
        sut = JukeBox()
    }

    override func tearDown() {
        super.tearDown()
        sut = nil
    }

    func test_playRock() {
        sut.playMusic(type: .rock)

        guard case .name(let musicName) = sut.currentMusic else {
            return XCTFail("No music encoutered")
        }

        XCTAssertEqual(musicName, "Back in Black")
    }

    // Now do with the playPop()

}
