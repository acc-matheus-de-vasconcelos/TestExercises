import XCTest

/*:
 **Cenário:** Na tela de calculadora

 **Dado:** Que tenha recebido dois números

 **E:** Realizo uma soma

 **Então:** O resultado da soma dos números deve acontecer

 */

protocol CalculatorProtocol {
    func sum(_ p1: Int, _ p2: Int) -> Int
}

// Given: A calculator screen
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
        // When: it receive two numbers

        // And: Perform a sum

        // it: Should add the two numbers
    }

    func test_GivenACalculatorScreen_WhenItReceiveTwoNumbers_AndPerformASum_ItShouldAddTheTwoNumbers() {

    }

}

CalculatorScreenTestCase.defaultTestSuite.run()
