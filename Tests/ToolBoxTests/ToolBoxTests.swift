import XCTest
@testable import ToolBox

final class ToolBoxTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(ToolBox().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}