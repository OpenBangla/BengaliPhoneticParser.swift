import Foundation
import XCTest
@testable import BengaliPhoneticParser

class BengaliPhoneticParserTests: XCTestCase {
  func getGrammerPath() -> String {
    return FileManager.default.currentDirectoryPath + "/Tests/BengaliPhoneticParserTests/AvroPhonetic.json"
  }

  func testHelperFunctions() {
    do {
      let converter = try BengaliPhoneticParser(withGrammer: getGrammerPath())
      XCTAssertEqual(converter.isVowel("a"), true)
      XCTAssertEqual(converter.isVowel("b"), false)
      XCTAssertEqual(converter.isConsonant("m"), true)
      XCTAssertEqual(converter.isConsonant("o"), false)
    } catch let error as NSError {
      print("Failed to load: \(error.localizedDescription)")
    }
  }


  static var allTests : [(String, (BengaliPhoneticParserTests) -> () throws -> Void)] {
    return [
      ("HelperFunctionsTest", testHelperFunctions),
    ]
  }
}
