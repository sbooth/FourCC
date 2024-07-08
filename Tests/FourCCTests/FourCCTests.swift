import XCTest
@testable import FourCC

final class FourCCTests: XCTestCase {
	func testString() throws {
		XCTAssertEqual("test".fourCC, 0x74657374)
	}

	func testUInt32() {
		XCTAssertEqual(UInt32(0x74657374).fourCC, "test")
	}
}
