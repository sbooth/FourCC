import Testing
@testable import FourCC

@Suite struct FourCCTests {
	@Test func string() throws {
		#expect("test".fourCC == 0x74657374)
		#expect("te\0\0".fourCC == 0x74650000)
	}

	@Test func uInt32() {
		#expect(UInt32(0x74657374).fourCC == "test")
		#expect(UInt32(0x74650000).fourCC == "te\0\0")
	}
}
