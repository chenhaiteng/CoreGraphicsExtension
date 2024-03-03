//
//  CGRect+Center.swift
//
//
//  Created by Chen Hai Teng on 3/3/24.
//

import Foundation

public extension CGRect {
    /// return the center point of the rect.
    var center: CGPoint {
        CGPoint(x: self.midX, y: self.midY)
    }
}
