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
        
        //Test factory methods
        let fromDegree = CGAngle.degrees(90.0)
        
        XCTAssertEqual(fromDegree, CGFloat.pi/2)
        XCTAssertEqual(fromDegree.degrees, 90)
        XCTAssertEqual(fromDegree.radians, CGFloat.pi/2)
        
        let fromRadians = CGAngle.radians(Double.pi/2)
        
        XCTAssertEqual(fromRadians, CGFloat.pi/2)
        XCTAssertEqual(fromRadians.degrees, 90)
        XCTAssertEqual(fromRadians.radians, CGFloat.pi/2)
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
    
    func testCGPointOffset() {
        let basePt = CGPoint.zero
        let offsetPt = CGPoint(x: 1, y: 1)
        XCTAssertEqual(basePt.offset(by: offsetPt), offsetPt)
        XCTAssertEqual(basePt >> offsetPt, offsetPt)
        
        let offsetSize = CGSize(width: 1, height: 1)
        XCTAssertEqual(basePt.offset(by: offsetSize), offsetPt)
        XCTAssertEqual(basePt >> offsetSize, offsetPt)
        
        XCTAssertEqual(basePt.offset(dx: 1, dy: 1), offsetPt)
        XCTAssertEqual(basePt >> (1, 1), offsetPt)
    }
    
    func testCGRectFitSqure() {
        let originRect = CGRect(origin: .zero, size: CGSize(width: 100, height: 120))
        let originRectLandscape = CGRect(origin: .zero, size: CGSize(width: 120, height: 100))
        let originSquare = CGRect(origin: .zero, size: CGSize(width:90.0, height: 90.0))
        
        XCTAssertEqual(originRect.fitSqure(), CGRect(x: 0, y: 10, width: 100, height: 100))
        XCTAssertEqual(originRectLandscape.fitSqure(), CGRect(x: 10, y: 0, width: 100, height: 100))
        XCTAssertEqual(originSquare.fitSqure(), originSquare)
        
    }

    static var allTests = [
        ("CGAngle", testCGAngle),
        ("CGPolarPoint", testPolarPoint),
        ("CGPoint+OFfset", testCGPointOffset),
        ("CGRectFitSqure", testCGRectFitSqure)
    ]
}
