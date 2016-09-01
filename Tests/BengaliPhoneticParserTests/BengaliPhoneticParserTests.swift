import XCTest
@testable import BengaliPhoneticParser

class BengaliPhoneticParserTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        var converter = BengaliPhoneticParser(grammer: "Hello, World!")
        XCTAssertEqual(converter.text, "Hello, World!")
        XCTAssertEqual(converter.convert(from: "Ami"), "Ami")
    }


    static var allTests : [(String, (BengaliPhoneticParserTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
