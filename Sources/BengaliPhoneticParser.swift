/*
 * BengaliPhoneticParser
 * A Bengali Phonetic Parser that obeys rules
 *
 * Copyright (C) 2016-present Muhammad Mominul Huque

 *  This Source Code Form is subject to the terms of the Mozilla Public
 *  License, v. 2.0. If a copy of the MPL was not distributed with this
 *  file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */

struct BengaliPhoneticParser {
  var text: String
  init(grammer: String) {
    text = grammer
  }

  func convert(from text: String) -> String {
    return text
  }
}
