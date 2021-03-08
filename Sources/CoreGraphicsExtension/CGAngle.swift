//
//  CGAngle.swift
//  
//
//  Created by Chen Hai Teng on 3/8/21.
//

import Foundation
import CoreGraphics

public struct CGAngle {
    public static var zero = CGAngle()
    public var radians: CGFloat
    
    public var degrees: CGFloat {
        radians*180/CGFloat.pi
    }

    @inlinable public init() {
        radians = 0
    }

    @inlinable public init<T: BinaryFloatingPoint>(radians: T) {
        self.radians = CGFloat(radians)
    }
    
    @inlinable public init<T: BinaryFloatingPoint>(degrees: T) {
        self.radians = CGFloat(degrees)*CGFloat.pi/180
    }
    
    @inlinable public static func radians<T: BinaryFloatingPoint>(_ radians: T) -> CGAngle {
        CGAngle(radians: radians)
    }
    
    @inlinable public static func degrees<T: BinaryFloatingPoint>(_ degrees: T) -> CGAngle {
        CGAngle(degrees: degrees)
    }
    
    public static func +(lhs:CGAngle, rhs: CGAngle) -> CGAngle {
        CGAngle(radians: lhs.radians + rhs.radians)
    }
    
    public static func +=(lhs: inout CGAngle, rhs: CGAngle) {
        lhs.radians += rhs.radians
    }
}

extension CGAngle: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(radians)
    }
}
