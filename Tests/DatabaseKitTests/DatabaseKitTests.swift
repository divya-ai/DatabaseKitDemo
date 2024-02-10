import XCTest
@testable import DatabaseKit

final class DatabaseKitTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(DatabaseKit().text, "Hello, World!")
    }
}
