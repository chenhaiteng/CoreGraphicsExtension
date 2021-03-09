//
//  CGPolarPoint.swift
//  
//
//  Created by Chen Hai Teng on 3/8/21.
//

import Foundation
import CoreGraphics

public struct CGPolarPoint {
    public static var zero = CGPolarPoint()
    public var radius: CGFloat
    public var cgangle: CGAngle
    public var cgpoint: CGPoint
    @inlinable public init() {
        radius = 0
        cgangle = CGAngle.zero
        cgpoint = CGPoint(x: radius*cos(cgangle.radians), y: radius*sin(cgangle.radians))
    }
    
    @inlinable public init<T: BinaryFloatingPoint>(radius: T, angle: CGAngle) {
        self.radius = CGFloat(radius)
        cgangle = angle
        cgpoint = CGPoint(x: self.radius*cos(cgangle.radians), y: self.radius*sin(cgangle.radians))
    }
}
