//
//  CGRect+Offset.swift
//
//
//  Created by Chen Hai Teng on 3/3/24.
//

import Foundation

public extension CGRect {
    
    func offsetBy(point: CGPoint) -> CGRect {
        offsetBy(dx: point.x, dy: point.y)
    }
    
    func offsetBy(size: CGSize) -> CGRect {
        offsetBy(dx: size.width, dy: size.height)
    }
    
    static func >>(lhs: CGRect, rhs: CGPoint) -> CGRect {
        lhs.offsetBy(dx: rhs.x, dy: rhs.y)
    }
    
    static func >>(lhs: CGRect, rhs: CGSize) -> CGRect {
        lhs.offsetBy(dx: rhs.width, dy: rhs.height)
    }
    
    static func >><T: BinaryFloatingPoint>(lhs: CGRect, rhs: (dx:T, dy:T)) -> CGRect {
        lhs.offsetBy(dx: CGFloat(rhs.dx), dy: CGFloat(rhs.dy))
    }
}
