//
//  CGPoint+Offset.swift
//  
//
//  Created by Chen Hai Teng on 3/3/24.
//

import Foundation

public extension CGPoint {
    func offset(by point: CGPoint) -> CGPoint {
        CGPoint(x: x + point.x, y: y + point.y)
    }
    
    func offset(by size: CGSize) -> CGPoint {
        CGPoint(x: x + size.width, y: y + size.height)
    }
    
    func offset<T : BinaryFloatingPoint>(dx: T = 0.0, dy: T = 0.0) -> CGPoint {
        CGPoint(x: x + Double(dx), y: y + Double(dy))
    }
    
    static func >>(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        lhs.offset(by: rhs)
    }
    
    static func >>(lhs: CGPoint, rhs: CGSize) -> CGPoint {
        lhs.offset(by: rhs)
    }
    
    static func >><T: BinaryFloatingPoint>(lhs: CGPoint, rhs: (dx:T, dy:T)) -> CGPoint {
        lhs.offset(dx: rhs.dx, dy: rhs.dy)
    }
}
