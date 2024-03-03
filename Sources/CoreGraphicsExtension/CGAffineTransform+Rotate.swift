//
//  CGAffineTransform+Rotate.swift
//
//
//  Created by Chen Hai Teng on 3/3/24.
//

import Foundation
import CoreGraphics

public extension CGAffineTransform {
    /// Create a transform that rotate around the specified center with given angle.
    static func rotateTransform(around center: CGPoint, by angle: CGAngle) -> CGAffineTransform {
        CGAffineTransform(translationX: center.x, y: center.y)
            .rotated(by: angle.radians)
            .translatedBy(x: -center.x, y: -center.y)
    }
    
}
