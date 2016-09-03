/*
 * BengaliPhoneticParser
 * A Bengali Phonetic Parser that obeys rules
 *
 * Copyright (C) 2016-present Muhammad Mominul Huque

 *  This Source Code Form is subject to the terms of the Mozilla Public
 *  License, v. 2.0. If a copy of the MPL was not distributed with this
 *  file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */

import Foundation

struct BengaliPhoneticParser {
  //let patterns: [String: Any]
  let vowel: String
  let consonant: String
  let numbers: String
  let caseSensitive: String
  //let maxPatternLength: Int

  init(withGrammer path: String) throws {
    // Load grammer(rules) file
    let jsonData = try Data(contentsOf: URL(fileURLWithPath: path), options: [])
    let jsonArray = try JSONSerialization.jsonObject(with: jsonData, options: [])

    let grammer = jsonArray as! [String: Any]
    //patterns = grammer["patterns"]
    vowel = grammer["vowel"] as! String
    consonant = grammer["consonant"] as! String
    numbers = grammer["number"] as! String
    caseSensitive = grammer["casesensitive"] as! String
  }

  func convert(from text: String) -> String {
    return text
  }

  func fixString(_ str: String) -> String {
    var fixed = ""
    for char in str.characters {
      if isCaseSensitive(char) {
        fixed.append(char)
      } else {
        fixed.append(String(char).lowercased())
      }
    }
    return fixed
  }

  func isVowel(_ c: Character) -> Bool {
    return vowel.contains(String(c))
  }

  func isConsonant(_ c: Character) -> Bool {
    return consonant.contains(String(c))
  }

  func isNumber(_ c: Character) -> Bool {
    return numbers.contains(String(c))
  }

  func isCaseSensitive(_ c: Character) -> Bool {
    return caseSensitive.contains(String(c))
  }
}
