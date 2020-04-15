import XCTest
@testable import BurnSoft_Universal

final class BurnSoft_UniversalTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(BurnSoftUniversal().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
