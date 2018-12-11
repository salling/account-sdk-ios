//
// Copyright 2011 - 2018 Schibsted Products & Technology AS.
// Licensed under the terms of the MIT license. See LICENSE in the project root.
//

import Foundation

extension String {
    var shortened: String {
        let maxChars = 8
        let charsOnEachSide = 3
        let inbetweenChar: Character = "."

        if self.count <= charsOnEachSide * 2 {
            return self
        }

        return self[..<self.index(self.startIndex, offsetBy: charsOnEachSide)]
            + String(repeating: String(inbetweenChar), count: maxChars - charsOnEachSide * 2)
            + self[self.index(self.endIndex, offsetBy: -charsOnEachSide)...]
    }
}