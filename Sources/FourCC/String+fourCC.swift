//
// Copyright © 2020-2024 Stephen F. Booth <me@sbooth.org>
// Part of https://github.com/sbooth/FourCC
// MIT license
//

import Foundation

extension String {
	/// Returns `self.prefix(4)` interpreted as a four character code
	public var fourCC: UInt32 {
		prefix(4).unicodeScalars.reduce(0) {
			($0 << 8) | ($1.value & 0xff)
		}
	}
}
