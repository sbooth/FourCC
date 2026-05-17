//
// Copyright © 2020-2026 Stephen F. Booth <me@sbooth.org>
// Part of https://github.com/sbooth/FourCC
// MIT license
//

import Foundation

extension UInt32 {
	/// Returns the value of `self` as a four character code string.
	public var fourCC: String {
		let value = self.bigEndian
		return withUnsafeBytes(of: value) { buffer in
			String(decoding: buffer, as: UTF8.self)
		}
	}
}
