//
//  XLayoutConstraint+Vertical.swift
//  XConstraintKit
//
//  Created by Ajaya Mati on 13/03/24.
//

import Foundation

// MARK: - XHorizontalConstraint Initializers
public extension XLayoutConstraintMaker {
    /// constraints of left anchor
    ///  - Parameters:
    ///     - constants: distance
    var top: XVerticalConstraint {
        .init(attribute1: XVerticalAttribute.top, attribute2: XVerticalAttribute.top)
    }
    /// constraints of right anchor
    ///  - Parameters:
    ///     - constants: distance
    var bottom: XVerticalConstraint {
        .init(attribute1: XVerticalAttribute.bottom, attribute2: XVerticalAttribute.bottom)
    }
    /// positioned directly center to super view in horizontal direction
    var centerY: XVerticalConstraint {
        .init(attribute1: XVerticalAttribute.center, attribute2: XVerticalAttribute.center)
    }
}
