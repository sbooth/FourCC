//
// Copyright © 2020-2026 Stephen F. Booth <me@sbooth.org>
// Part of https://github.com/sbooth/FourCC
// MIT license
//

import Foundation

extension String {
	/// Returns the first four characters of `self` as a four character code value.
	public var fourCC: UInt32 {
		var result: UInt32 = 0
		for byte in utf8.prefix(4) {
			result = (result << 8) | UInt32(byte)
		}
		return result
	}
}
