import XCTest
@testable import CoreGraphicsExtension

final class CoreGraphicExtensionTests: XCTestCase {
    
    let __CosZero = cos(CGFloat.pi/2.0)
    let __Cos45 = cos(CGFloat.pi/4.0)
    func testCGAngle() {
        // Ensure zero works
        XCTAssertEqual(CGAngle.zero.radians, 0)
        
        let rightAngle = CGAngle.pi/2
        XCTAssertEqual(rightAngle, CGFloat.pi/2)
        XCTAssertEqual(rightAngle.degrees, 90)
        XCTAssertEqual(rightAngle.radians, CGFloat.pi/2)
    }
    
    func testPolarPoint() {
        // Ensure zero works
        XCTAssertEqual(CGPolarPoint.zero.radius, 0)
        XCTAssertEqual(CGPolarPoint.zero.cgangle, CGAngle.zero)
        XCTAssertEqual(CGPolarPoint.zero.cgpoint, CGPoint.zero)
        
        let upPoint = CGPolarPoint(radius: CGFloat(1), angle: CGAngle.pi/2)
        let rightUpPoint = CGPolarPoint(radius: CGFloat(sqrt(2)), angle: CGAngle.pi/4)
        XCTAssertEqual(upPoint.radius, 1)
        XCTAssertEqual(upPoint.cgangle, CGAngle.pi/2)
        //For floating precisly problem, it cannot compare with CGPoint(x: 0.0, y: 1.0) directly.
        XCTAssertEqual(upPoint.cgpoint, CGPoint(x: __CosZero, y: 1))
        
        //For floating precisly problem, it cannot compare with CGPoint(x: 1.0, y: 1.0) directly.
        XCTAssertEqual(rightUpPoint.cgpoint, CGPoint(x: __Cos45*CGFloat(sqrt(2)), y:1))
    }

    static var allTests = [
        ("CGAngle", testCGAngle),
        ("CGPolarPoint", testPolarPoint),
    ]
}
