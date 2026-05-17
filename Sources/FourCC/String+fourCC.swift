//
// Copyright © 2020-2026 Stephen F. Booth <me@sbooth.org>
// Part of https://github.com/sbooth/FourCC
// MIT license
//

import Foundation

extension String {
	/// Encodes the first four bytes of the UTF-8 representation of `self` into a 32-bit unsigned integer.
	///
	/// This property treats the string as a raw byte stream. It extracts up to the first four bytes of
	/// the UTF-8 representation and packs them into a `UInt32` using big-endian byte ordering. If the
	/// UTF-8 representation is shorter than four bytes the remaining bytes of the integer are set to zero.
	///
	/// - returns: A `UInt32` containing the first four bytes of the UTF-8 representation of `self`.
	public var fourCC: UInt32 {
		var result: UInt32 = 0
		let bytes = self.utf8.prefix(4)
		withUnsafeMutableBytes(of: &result) { buffer in
			buffer.copyBytes(from: bytes)
		}
		return UInt32(bigEndian: result)
	}
}
