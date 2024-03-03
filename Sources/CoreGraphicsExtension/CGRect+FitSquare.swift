//
//  CGRect+FitSqure.swift
//
//
//  Created by Chen Hai Teng on 3/3/24.
//

import Foundation


extension CGSize {
    var fitInset: CGPoint {
        if width > height {
            CGPoint(x: (width - height)/2.0, y: 0.0)
        } else {
            CGPoint(x: 0.0, y: (height - width)/2.0)
        }
    }
}

public extension CGRect {
    func fitSqure() -> CGRect {
        guard !isEmpty, !isNull, !isInfinite  else {
            return .zero
        }
        return insetBy(dx: size.fitInset.x, dy: size.fitInset.y)
    }
}
