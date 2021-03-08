import XCTest
@testable import CoreGraphicsExtension

final class CoreGraphicExtensionTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CGAngle.zero.radians, 0)
        XCTAssertEqual(CGPolarPoint.zero.radius, 0)
        XCTAssertEqual(CGPolarPoint.zero.cgangle, CGAngle.zero)
        XCTAssertEqual(CGPolarPoint.zero.cgpoint, CGPoint.zero)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
