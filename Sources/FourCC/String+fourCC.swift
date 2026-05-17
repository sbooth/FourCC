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
		let bytes = self.utf8.prefix(4)
		withUnsafeMutableBytes(of: &result) { buffer in
			buffer.copyBytes(from: bytes)
		}
		return UInt32(bigEndian: result)
	}
}
