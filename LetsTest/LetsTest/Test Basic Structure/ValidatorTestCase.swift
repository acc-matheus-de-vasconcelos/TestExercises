//
//  ValidatorTestCase.swift
//  LetsTestTests
//

import XCTest
// Always remember to import what you're testing. And use @testable to have greater access to it's classes and other members.
@testable import class LetsTest.Validator

class ValidatorTestCase: XCTestCase {
    
    /**
     SUT: System Under Test
     It's the part of code we're testing. In this case, the class Validator.
     */
    var sut: Validator!

    /**
     Put setup code here. This method is called **BEFORE** the invocation of the **FIRST TEST** method in the class.
     */
    override class func setUp() {
    }
    
    /**
     Put setup code here. This method is called **BEFORE** the invocation of **EACH TEST** method in the class.
     Here we implement everything we need to run our tests
     By convention we implement even if we're not using it to prevent future problems
     */
    override func setUp() {
        super.setUp()
        // Arrange
        sut = Validator()
    }
    
    /**
     Provides an opportunity to reset state and to throw errors. This method is called **BEFORE** the invocation of **EACH TEST** method in the class.
     */
    override func setUpWithError() throws {
    }
    
    /**
     Put teardown code here. This method is called **AFTER** the invocation of the **LAST TEST** method in the class.
     */
    override class func tearDown() {
    }
    
    /**
     Put teardown code here. This method is called **AFTER** the invocation of **EACH TEST** method in the class.
     Here we implement everything to clean the ambient for the next test. Making sure that we wipe out all data shared between tests in global parameters.
     */
    override func tearDown() {
        super.tearDown()
        sut = nil
    }
    
    /**
     Provides an opportunity to perform cleanup and to throw errors. This method is called **AFTER** the invocation of **EACH TEST** method in the class.
     */
    override func tearDownWithError() throws {
    }

    /**
     Here we're testing the first method of our validator.
     You can see the AAA steps here and in the setUp function, where first we Arrange the SUT, to pass values to Act with and to Assert the result.
     */
    func testValidText() {
        // Act
        let text = String(repeating: "a", count: 11)
        let result = sut.isValid(text: text)
        
        // Assert
        XCTAssertTrue(result)
    }
    
    /**
     Here we're testing the first method of our validator.
     You can see the GWT steps here. Given the value generated, When the SUT tries to validate, Then it should return true.
     */
    func testValidNumber() {
        // Given
        let number = Int.random(in: 1...1000)*2
        
        // When
        let result = sut.isValid(number: number)
        
        // Then
        XCTAssertTrue(result)
    }

    /**
     This is an example of a performance test case.
     Performance tests are important
     */
    func testPerformanceExample() throws {
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
