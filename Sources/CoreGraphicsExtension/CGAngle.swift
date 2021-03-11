//
//  CGAngle.swift
//  
//
//  Created by Chen Hai Teng on 3/8/21.
//

import Foundation
import CoreGraphics

public typealias CGAngle = CGFloat

extension CGAngle {
    public static var zero: CGFloat = 0.0
    public var radians: CGFloat {
        self
    }
    public var degrees: CGFloat {
        self*180/CGFloat.pi
    }
    
    @inlinable public static func radians<T: BinaryFloatingPoint>(_ radians: T) -> CGAngle {
        CGAngle(radians)
    }
    
    @inlinable public static func degrees<T: BinaryFloatingPoint>(_ degrees: T) -> CGAngle {
        return CGAngle(degrees*T.pi/180)
    }
}
