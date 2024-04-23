//
//  XLayoutConstraint+Horizontal.swift
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
    var leading: XHorizontalConstraint {
        let constraint = XHorizontalConstraint(attribute1: XHorizontalAttribute.leading, attribute2: XHorizontalAttribute.leading)
        
        return constraint
    }
    /// constraints of right anchor
    ///  - Parameters:
    ///     - constants: distance
    var trailing: XHorizontalConstraint {
        let constraint = XHorizontalConstraint(attribute1: XHorizontalAttribute.trailing, attribute2: XHorizontalAttribute.trailing)
        
        return constraint
    }
    /// positioned directly center to super view in horizontal direction
    var centerX: XHorizontalConstraint {
        return XHorizontalConstraint(attribute1: XHorizontalAttribute.center, attribute2: XHorizontalAttribute.center)
    }
}
