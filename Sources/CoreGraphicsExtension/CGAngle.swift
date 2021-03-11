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
}
