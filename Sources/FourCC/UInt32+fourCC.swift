//
// Copyright © 2020-2026 Stephen F. Booth <me@sbooth.org>
// Part of https://github.com/sbooth/FourCC
// MIT license
//

import Foundation

extension UInt32 {
	/// Decodes `self` into a four-character code string.
	///
	/// This property treats the `UInt32` as a four-byte buffer ordered in big-endian byte order.
	/// It attempts to decode these four bytes into a readable string using the UTF-8 codec.
	///
	/// - returns: A `String` representation of the four bytes in `self`.
	public var fourCC: String {
		let value = self.bigEndian
		return withUnsafeBytes(of: value) { buffer in
			String(decoding: buffer, as: UTF8.self)
		}
	}
}
